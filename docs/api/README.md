# API Documentation

This folder contains complete API references for both the smart contract and frontend application.

## Documentation

### [API Reference](./API.md)
Complete API documentation covering all endpoints, methods, and data structures.

### [Contract API](./contract-api.md)
Smart contract functions, events, and data structures. Includes:
- Function signatures and parameters
- Event definitions
- Return values
- Gas estimates
- Usage examples

### [Frontend Usage](./frontend-usage.md)
Frontend API usage patterns and flows:
- Component APIs
- Hook usage
- Service methods
- User interaction flows

## Quick Reference

### Smart Contract
- **Create Package:** `createPackage(string description)`
- **Transfer Package:** `transferOwnership(uint256 packageId, address newOwner)`
- **Mark Delivered:** `markAsDelivered(uint256 packageId)`
- **Get Package Details:** `getPackageDetails(uint256 packageId)`

See [Contract API](./contract-api.md) for complete reference.

### Frontend
- **Components:** React components and their props
- **Hooks:** Custom React hooks (useWallet, useContract, useTransaction)
- **Services:** Business logic services (transactionManager, offlineManager)

See [Frontend Usage](./frontend-usage.md) for complete reference.

