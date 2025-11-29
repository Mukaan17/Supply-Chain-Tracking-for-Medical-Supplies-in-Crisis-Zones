# Test Execution Guide

This guide provides instructions for running all tests in the Supply Chain Tracking application.

## Quick Start

Run all tests using the provided script:

```bash
./scripts/run-tests.sh
```

## Manual Test Execution

### 1. Smart Contract Tests

```bash
cd supply-chain-contract
npm test
```

**Expected Output:**
- All contract tests should pass
- Tests cover: deployment, package creation, transfers, status updates, batch operations, access control

**Coverage:**
```bash
npm run test:coverage
```

### 2. Frontend Unit Tests

```bash
cd supply-chain-dapp
npm test -- --watchAll=false
```

**Expected Output:**
- 15+ test suites should pass
- Tests cover: components, hooks, services, utilities

**Coverage:**
```bash
npm run test:coverage
```

**Target Coverage:** >70%

### 3. E2E Tests

**Prerequisites:**
- Install Playwright browsers: `npx playwright install`
- Start the application: `npm start` (in another terminal)

**Run E2E Tests:**
```bash
cd supply-chain-dapp
npm run test:e2e
```

**With UI (Interactive):**
```bash
npm run test:e2e:ui
```

**Expected Output:**
- Main application flows
- Accessibility tests
- Performance tests

### 4. Linting

**Frontend:**
```bash
cd supply-chain-dapp
npm run lint
```

**Contract:**
```bash
cd supply-chain-contract
npm run lint
```

### 5. Build Verification

**Contract:**
```bash
cd supply-chain-contract
npm run compile
```

**Frontend:**
```bash
cd supply-chain-dapp
npm run build
```

### 6. Security Audit

**Frontend:**
```bash
cd supply-chain-dapp
npm audit --audit-level=moderate
```

**Contract:**
```bash
cd supply-chain-contract
npm audit --audit-level=moderate
```

## Test Environment Setup

### Local Development Testing

1. **Start Hardhat Node:**
```bash
cd supply-chain-contract
npx hardhat node
```

2. **Deploy Contract:**
```bash
npm run deploy:localhost
```

3. **Configure Frontend:**
   - Copy `.env.example` to `.env`
   - Set `REACT_APP_CONTRACT_ADDRESS` to deployed address
   - Set `REACT_APP_NETWORK=localhost`

4. **Start Frontend:**
```bash
cd supply-chain-dapp
npm start
```

### Testnet Testing

1. **Configure Environment:**
   - Set `REACT_APP_NETWORK=sepolia`
   - Set `REACT_APP_CONTRACT_ADDRESS` to Sepolia contract address

2. **Connect MetaMask:**
   - Switch to Sepolia testnet
   - Ensure test ETH is available

## Test Scenarios

### Unit Test Scenarios

1. **Contract Tests:**
   - Package creation with valid/invalid descriptions
   - Package transfer with authorization checks
   - Status updates (in transit, delivered)
   - Batch operations
   - Access control (admin, operator roles)
   - Reentrancy protection
   - Rate limiting

2. **Frontend Tests:**
   - Component rendering
   - User interactions
   - Form validation
   - Error handling
   - Hook functionality
   - Service methods

### E2E Test Scenarios

1. **Complete Package Lifecycle:**
   - Connect wallet
   - Create package
   - View package details
   - Transfer package
   - Mark as in transit
   - Mark as delivered
   - Search packages

2. **Error Scenarios:**
   - Wallet rejection
   - Network switching
   - Insufficient funds
   - Invalid package ID
   - Unauthorized operations

3. **Accessibility:**
   - Keyboard navigation
   - Screen reader compatibility
   - ARIA labels
   - Color contrast

## Troubleshooting

### Tests Fail to Run

**Issue:** Dependencies not installed
**Solution:**
```bash
npm install --legacy-peer-deps
```

**Issue:** Playwright browsers not installed
**Solution:**
```bash
npx playwright install
```

### Contract Tests Fail

**Issue:** Hardhat node not running
**Solution:** Start Hardhat node for local tests

**Issue:** Network configuration incorrect
**Solution:** Check `hardhat.config.js` and network settings

### Frontend Tests Fail

**Issue:** Mock files missing
**Solution:** Verify `src/__mocks__/` directory exists

**Issue:** Environment variables not set
**Solution:** Create `.env` file with required variables

### E2E Tests Fail

**Issue:** Application not running
**Solution:** Start application with `npm start`

**Issue:** MetaMask not configured
**Solution:** E2E tests should mock MetaMask, check test setup

## Coverage Goals

- **Contract Tests:** >90% coverage
- **Frontend Unit Tests:** >70% coverage
- **E2E Tests:** All critical user flows

## Continuous Integration

Tests are automatically run in CI/CD pipeline:
- On every push to `main` or `develop`
- On pull requests
- See `.github/workflows/ci.yml` for details

## Test Reports

### Coverage Reports

Coverage reports are generated in:
- Frontend: `supply-chain-dapp/coverage/`
- Contract: `supply-chain-contract/coverage/`

### E2E Reports

Playwright reports are generated in:
- `supply-chain-dapp/playwright-report/`

View reports:
```bash
npx playwright show-report
```

## Best Practices

1. **Write Tests First:** Follow TDD when possible
2. **Test Edge Cases:** Include boundary conditions
3. **Mock External Services:** Don't rely on external APIs
4. **Keep Tests Fast:** Unit tests should be quick
5. **Isolate Tests:** Tests should not depend on each other
6. **Clear Test Names:** Use descriptive test names
7. **Maintain Coverage:** Keep coverage above targets

## Next Steps

After running tests:

1. Review coverage reports
2. Fix any failing tests
3. Address security vulnerabilities
4. Update documentation with results
5. Create test report (see TEST_REPORT.md template)

