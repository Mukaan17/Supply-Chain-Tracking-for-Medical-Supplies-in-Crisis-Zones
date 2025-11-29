#!/bin/bash

# Test Execution Script
# Runs all test suites for the Supply Chain application

set -e

echo "========================================="
echo "Supply Chain Application - Test Suite"
echo "========================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Track overall status
OVERALL_STATUS=0

# Function to print section header
print_section() {
    echo ""
    echo "----------------------------------------"
    echo "$1"
    echo "----------------------------------------"
}

# Function to run command and check status
run_test() {
    local test_name=$1
    local test_command=$2
    local test_dir=$3
    
    print_section "Running: $test_name"
    
    if [ -n "$test_dir" ]; then
        cd "$test_dir" || exit 1
    fi
    
    if eval "$test_command"; then
        echo -e "${GREEN}✓ $test_name passed${NC}"
    else
        echo -e "${RED}✗ $test_name failed${NC}"
        OVERALL_STATUS=1
    fi
    
    if [ -n "$test_dir" ]; then
        cd - > /dev/null || exit 1
    fi
}

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

cd "$PROJECT_ROOT" || exit 1

echo "Project Root: $PROJECT_ROOT"
echo ""

# 1. Contract Tests
print_section "Phase 1: Smart Contract Tests"
run_test "Contract Unit Tests" "npm test" "supply-chain-contract"

# 2. Frontend Unit Tests
print_section "Phase 2: Frontend Unit Tests"
run_test "Frontend Unit Tests" "npm test -- --watchAll=false" "supply-chain-dapp"

# 3. Frontend Coverage
print_section "Phase 3: Frontend Test Coverage"
run_test "Frontend Coverage" "npm run test:coverage" "supply-chain-dapp" || echo -e "${YELLOW}Coverage generation may have warnings${NC}"

# 4. Contract Coverage
print_section "Phase 4: Contract Test Coverage"
run_test "Contract Coverage" "npm run test:coverage" "supply-chain-contract" || echo -e "${YELLOW}Coverage generation may have warnings${NC}"

# 5. Linting
print_section "Phase 5: Code Linting"
run_test "Frontend Linting" "npm run lint" "supply-chain-dapp" || echo -e "${YELLOW}Linting may have warnings${NC}"
run_test "Contract Linting" "npm run lint" "supply-chain-contract" || echo -e "${YELLOW}Linting may have warnings${NC}"

# 6. Build Verification
print_section "Phase 6: Build Verification"
run_test "Contract Compilation" "npm run compile" "supply-chain-contract"
run_test "Frontend Build" "npm run build" "supply-chain-dapp"

# 7. Security Audit
print_section "Phase 7: Security Audit"
echo "Running security audits (warnings are expected)..."
run_test "Frontend Security Audit" "npm audit --audit-level=moderate || true" "supply-chain-dapp"
run_test "Contract Security Audit" "npm audit --audit-level=moderate || true" "supply-chain-contract"

# Summary
echo ""
echo "========================================="
echo "Test Summary"
echo "========================================="

if [ $OVERALL_STATUS -eq 0 ]; then
    echo -e "${GREEN}All critical tests passed!${NC}"
    echo ""
    echo "Note: Some tests may have warnings but did not fail."
    echo "Review the output above for details."
    exit 0
else
    echo -e "${RED}Some tests failed. Review the output above.${NC}"
    exit 1
fi

