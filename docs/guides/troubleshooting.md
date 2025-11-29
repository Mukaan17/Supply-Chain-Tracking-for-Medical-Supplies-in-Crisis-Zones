## Troubleshooting

### Wallet Connection Issues

**Wallet not connecting:**
- Ensure MetaMask is installed and unlocked
- Refresh the page after switching networks
- Check browser console for errors
- Try disconnecting and reconnecting wallet
- Clear browser cache and cookies

**MetaMask not detected:**
- Ensure MetaMask extension is enabled
- Try a different browser
- Check if MetaMask is updated to latest version

**Account changes not detected:**
- The app should auto-detect account changes
- If not working, manually refresh the page
- Check network connection

### Network Issues

**Wrong network / no contract data:**
- Switch MetaMask to the network where you deployed (localhost or Sepolia)
- Confirm the dapp uses the correct contract address in its config
- Check `.env` file has correct `REACT_APP_CONTRACT_ADDRESS`
- Verify contract is deployed on selected network

**Network switching fails:**
- The app will attempt to add network if not present
- Manually add network in MetaMask if automatic addition fails
- Check network configuration in `src/config/networks.js`

### Package Issues

**Package not found or invalid ID:**
- IDs start at 1 and are sequential
- Ensure the package exists on the selected network
- Check package ID is a valid number
- Verify you're on the correct network

**Package details not loading:**
- Check network connection
- Verify contract address is correct
- Check browser console for errors
- Try refreshing the page

### Transaction Issues

**Transfer fails: Only current owner can transfer:**
- Connect with the wallet that is the `currentOwner`
- Verify the recipient address is a valid EVM address and not zero address
- Check transaction status in MetaMask
- Review transaction in block explorer

**Mark as delivered fails:**
- Only the current owner can mark delivered
- Confirm the package exists and is currently owned by your account
- Check package status (must not already be delivered)
- Verify you have sufficient gas

**Transaction stuck or pending:**
- Check transaction in block explorer
- Verify network is not congested
- Check gas price settings
- Transaction manager will retry on timeout (up to 3 attempts)
- If stuck, check MetaMask for transaction status

**Nonce errors:**
- The app now automatically syncs nonce with chain
- If issues persist, try switching accounts and back
- Restart the application
- Check for pending transactions in MetaMask

**Insufficient funds errors:**
- Fund your account with ETH (or test ETH on testnets)
- Check gas price - high gas prices require more funds
- Estimate gas before submitting transaction

**Transaction rejected by user:**
- This is expected if user clicks "Reject" in MetaMask
- No action needed - transaction was cancelled
- Try again if needed

### Development Issues

**Hardhat local node issues:**
- Restart the Hardhat node and redeploy
- If ABI mismatches, rebuild artifacts: `npm run compile`
- Restart the dapp after contract changes
- Clear Hardhat cache: `rm -rf cache artifacts`

**Dependency installation issues:**
- Use `npm install --legacy-peer-deps` for React 19 compatibility
- Clear node_modules and package-lock.json, then reinstall
- Check Node.js version (requires 18+)

**Build failures:**
- Check all environment variables are set
- Verify contract is compiled
- Check for TypeScript/ESLint errors
- Review build logs for specific errors

**Test failures:**
- Ensure all dependencies are installed
- Run `npx playwright install` for E2E tests
- Check test environment configuration
- Review test logs for specific failures

### Configuration Issues

**Environment variables not working:**
- Ensure `.env` file exists in correct directory
- Restart development server after changing `.env`
- Check variable names match exactly (case-sensitive)
- Verify `.env` file is not in `.gitignore` (should be, but check it exists)

**Contract address not found:**
- Set `REACT_APP_CONTRACT_ADDRESS` in `.env`
- Or set network-specific address (e.g., `REACT_APP_CONTRACT_ADDRESS_SEPOLIA`)
- Verify address is valid (starts with 0x, 42 characters)
- Check contract is deployed on selected network

### Performance Issues

**Slow loading:**
- Check network connection
- Clear browser cache
- Check for large bundle size (run `npm run analyze`)
- Verify lazy loading is working

**High gas costs:**
- Check current gas prices
- Consider using Layer 2 networks (Polygon, Arbitrum, Optimism)
- Batch operations when possible
- Review contract gas optimization

### Error Messages

**"Contract not initialized":**
- Ensure wallet is connected
- Check contract address is configured
- Verify network is correct
- Refresh the page

**"Provider not initialized":**
- Connect wallet first
- Check MetaMask is unlocked
- Verify network connection

**"Transaction timeout":**
- Network may be slow or congested
- Transaction manager will retry automatically
- Check transaction in block explorer
- Increase timeout if needed (in config)

**"Network error":**
- Check internet connection
- Verify RPC endpoint is accessible
- Try switching networks
- Check if RPC provider is down

### Getting Help

If issues persist:
1. Check browser console for errors
2. Review application logs (if logging is enabled)
3. Check transaction status in block explorer
4. Review error messages carefully
5. Consult documentation in `docs/` directory
6. Check GitHub issues (if applicable)

### Recent Fixes Applied

The following issues have been fixed in recent updates:

1. **Transaction Retry Logic:** Now properly distinguishes retryable vs non-retryable errors
2. **Nonce Management:** Improved synchronization with chain state
3. **Error Messages:** Sanitized in production to prevent information leakage
4. **Provider Updates:** Fixed async handling in provider updates

If you encounter issues related to these areas, ensure you have the latest code.


