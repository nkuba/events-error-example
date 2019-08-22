const Token20 = artifacts.require('./Token20.sol')
const Token721 = artifacts.require('./Token721.sol')
const System = artifacts.require('./System.sol')

contract('System', (accounts) => {

    describe('create()', async () => {
        it('mints tokens', async () => {
            const token20 = await Token20.deployed()
            const token721 = await Token721.deployed()
            const system = await System.deployed()

            const receipt = await system.create(
                token20.address,
                token721.address
            )

            console.log("Transaction receipt:\n", receipt)
        })
    })
})
