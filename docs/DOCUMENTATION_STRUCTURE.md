# Documentation Structure

This document describes the organization of the documentation folder.

## Folder Organization

```
docs/
├── README.md                    # Main documentation index
├── TESTING.md                   # General testing overview
│
├── guides/                      # User guides and tutorials
│   ├── README.md
│   ├── setup.md                 # Setup instructions
│   ├── CONFIGURATION.md         # Configuration guide
│   ├── deployment.md            # Deployment guide
│   └── troubleshooting.md      # Troubleshooting guide
│
├── api/                         # API documentation
│   ├── README.md
│   ├── API.md                   # Complete API reference
│   ├── contract-api.md          # Smart contract API
│   └── frontend-usage.md         # Frontend usage patterns
│
├── development/                 # Development documentation
│   ├── README.md
│   ├── ARCHITECTURE.md          # System architecture
│   ├── security.md              # Security documentation
│   ├── PERFORMANCE.md           # Performance optimization
│   ├── ACCESSIBILITY.md         # Accessibility guidelines
│   └── INTERNATIONALIZATION.md  # i18n guide
│
├── testing/                     # Testing documentation
│   ├── README.md
│   ├── QUICK_TEST_START.md      # Quick start guide
│   ├── TESTING_GUIDE.md         # Comprehensive guide
│   ├── TESTING_SETUP.md         # Setup instructions
│   ├── TESTING_CHECKLIST.md     # Verification checklist
│   ├── TESTING_READY.md         # Infrastructure status
│   ├── TEST_EXECUTION_GUIDE.md  # How to run tests
│   └── TEST_REPORT.md           # Test report template
│
├── audit/                       # Audit reports
│   ├── README.md
│   ├── AUDIT_REPORT.md          # Comprehensive audit
│   ├── AUDIT_SUMMARY.md         # Audit summary
│   ├── FIXES_APPLIED.md         # Fixes documentation
│   ├── DEPENDENCY_VULNERABILITIES.md  # Security status
│   ├── PRODUCTION_READINESS.md  # Production assessment
│   └── REMAINING_ITEMS_FIXED.md # Remaining items status
│
└── status/                      # Implementation status
    ├── README.md
    ├── IMPLEMENTATION_STATUS.md  # Current status
    └── IMPLEMENTATION_COMPLETE.md # Completed items
```

## Navigation

- **New to the project?** Start with [guides/setup.md](guides/setup.md)
- **Looking for API docs?** See [api/](api/)
- **Want to understand the architecture?** Read [development/ARCHITECTURE.md](development/ARCHITECTURE.md)
- **Running tests?** Check [testing/QUICK_TEST_START.md](testing/QUICK_TEST_START.md)
- **Security concerns?** Review [audit/](audit/) and [development/security.md](development/security.md)

## Recent Changes

**2025-01-27:** Documentation reorganized into logical folders:
- User guides moved to `guides/`
- API docs moved to `api/`
- Development docs moved to `development/`
- Audit reports moved to `audit/`
- Testing docs consolidated in `testing/`

All cross-references have been updated to reflect the new structure.
