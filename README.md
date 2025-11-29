# Supply Chain Tracking for Medical Supplies in Crisis Zones

Enterprise-grade blockchain-based supply chain tracking system for medical supplies in crisis zones.

## Features

- ✅ **Smart Contract**: Secure, audited Solidity contract with access control
- ✅ **dApp Frontend**: React-based decentralized application
- ✅ **Multi-Network Support**: Sepolia, Mainnet, Polygon, Arbitrum, Optimism
- ✅ **Transaction Management**: Queue, retry, and timeout handling
- ✅ **Error Tracking**: Sentry integration for production monitoring
- ✅ **Analytics**: User behavior and performance tracking
- ✅ **Offline Support**: Service worker and IndexedDB for offline functionality
- ✅ **Security**: XSS prevention, rate limiting, input sanitization
- ✅ **Docker Deployment**: Containerized for easy deployment
- ✅ **CI/CD**: Automated testing and deployment pipelines

## Quick Start

### Prerequisites

- Node.js 18+
- npm or yarn
- MetaMask browser extension
- Git

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd "Idea 3 - Supply Chain Tracking for Medical Supplies in Crisis Zones"
```

2. Install contract dependencies:
```bash
cd supply-chain-contract
npm install
```

3. Install dApp dependencies:
```bash
cd ../supply-chain-dapp
npm install
```

4. Configure environment variables:
```bash
# Copy example files
cp .env.example .env
# Edit .env with your configuration
```

5. Start development server:
```bash
npm start
```

## Project Structure

```
.
├── supply-chain-contract/    # Smart contract (Hardhat)
│   ├── contracts/           # Solidity contracts
│   ├── test/                # Contract tests
│   └── scripts/             # Deployment scripts
├── supply-chain-dapp/        # React frontend
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── config/          # Configuration modules
│   │   ├── hooks/           # Custom React hooks
│   │   ├── services/         # Business logic services
│   │   └── utils/           # Utility functions
│   └── public/              # Static assets
├── docs/                    # Documentation
├── Dockerfile               # Docker configuration
├── docker-compose.yml       # Docker Compose configuration
└── .github/workflows/       # CI/CD pipelines
```

## Configuration

See [Configuration Guide](docs/guides/CONFIGURATION.md) for detailed configuration options.

### Environment Variables

Required:
- `REACT_APP_CONTRACT_ADDRESS`: Deployed contract address

Optional:
- `REACT_APP_NETWORK`: Default network (default: sepolia)
- `REACT_APP_ENABLE_ANALYTICS`: Enable analytics (default: false)
- `REACT_APP_ENABLE_ERROR_TRACKING`: Enable error tracking (default: false)

See `.env.example` files for complete list.

## Deployment

### Docker

```bash
docker-compose up -d
```

### Manual Build

```bash
cd supply-chain-dapp
npm run build
```

See [Deployment Guide](docs/guides/deployment.md) for detailed deployment instructions.

## Testing

### Quick Start

See [Quick Test Start Guide](docs/testing/QUICK_TEST_START.md) for the fastest way to run tests.

### Contract Tests

```bash
cd supply-chain-contract
npm test
```

### Frontend Tests

```bash
cd supply-chain-dapp
npm test
npm run test:e2e  # E2E tests (requires Playwright browsers)
```

For comprehensive testing documentation, see:
- [Testing Guide](docs/testing/TESTING_GUIDE.md)
- [Testing Setup](docs/testing/TESTING_SETUP.md)
- [Testing Checklist](docs/testing/TESTING_CHECKLIST.md)

## Security

- Smart contract audited and tested
- Input validation and sanitization
- XSS prevention
- Rate limiting
- Content Security Policy headers
- Reentrancy protection
- Access control (RBAC)

See [Security Documentation](docs/development/security.md) for details.

## Documentation

### Core Documentation

**User Guides:**
- [Setup Guide](docs/guides/setup.md)
- [Configuration Guide](docs/guides/CONFIGURATION.md)
- [Deployment Guide](docs/guides/deployment.md)
- [Troubleshooting](docs/guides/troubleshooting.md)

**API Documentation:**
- [API Reference](docs/api/API.md)
- [Contract API](docs/api/contract-api.md)
- [Frontend Usage](docs/api/frontend-usage.md)

**Development:**
- [Architecture](docs/development/ARCHITECTURE.md)
- [Security Documentation](docs/development/security.md)
- [Performance](docs/development/PERFORMANCE.md)
- [Accessibility](docs/development/ACCESSIBILITY.md)

### Testing & Status

- [Quick Test Start](docs/testing/QUICK_TEST_START.md) - Start here for testing!
- [Testing Guide](docs/testing/TESTING_GUIDE.md)
- [Implementation Status](docs/status/IMPLEMENTATION_STATUS.md)

See [Documentation Index](docs/README.md) for complete documentation.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## License

MIT

## Support

For issues and questions, please open an issue on GitHub.
