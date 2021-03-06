// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ripple_like_wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/**Class representing a Ripple account */
public abstract class RippleLikeAccount {
    public abstract void broadcastRawTransaction(byte[] transaction, StringCallback callback);

    public abstract void broadcastTransaction(RippleLikeTransaction transaction, StringCallback callback);

    public abstract RippleLikeTransactionBuilder buildTransaction();

    /**
     * Get fees from network
     * Note: it would have been better to have this method on RippleLikeWallet
     * but since RippleLikeWallet is not used anywhere, it's better to keep all
     * specific methods under the same specific class so it will be easy to segratate
     * when the right time comes !
     */
    public abstract void getFees(AmountCallback callback);

    /**
     * Get base reserve (dust to leave on an XRP account) from network
     * Note: same note as above
     */
    public abstract void getBaseReserve(AmountCallback callback);

    /**
     * Check whether an account has been activated or not
     * Here activation, means that the XRP account received a first transaction with a minimum amount
     * greater or equal to XRP base reserve
     * @param: address to check
     * @return: true if valid address and has been activated, false otherwise
     */
    public abstract void isAddressActivated(String address, BoolCallback isActivated);

    private static final class CppProxy extends RippleLikeAccount
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }

        @Override
        public void broadcastRawTransaction(byte[] transaction, StringCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_broadcastRawTransaction(this.nativeRef, transaction, callback);
        }
        private native void native_broadcastRawTransaction(long _nativeRef, byte[] transaction, StringCallback callback);

        @Override
        public void broadcastTransaction(RippleLikeTransaction transaction, StringCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_broadcastTransaction(this.nativeRef, transaction, callback);
        }
        private native void native_broadcastTransaction(long _nativeRef, RippleLikeTransaction transaction, StringCallback callback);

        @Override
        public RippleLikeTransactionBuilder buildTransaction()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_buildTransaction(this.nativeRef);
        }
        private native RippleLikeTransactionBuilder native_buildTransaction(long _nativeRef);

        @Override
        public void getFees(AmountCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_getFees(this.nativeRef, callback);
        }
        private native void native_getFees(long _nativeRef, AmountCallback callback);

        @Override
        public void getBaseReserve(AmountCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_getBaseReserve(this.nativeRef, callback);
        }
        private native void native_getBaseReserve(long _nativeRef, AmountCallback callback);

        @Override
        public void isAddressActivated(String address, BoolCallback isActivated)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_isAddressActivated(this.nativeRef, address, isActivated);
        }
        private native void native_isAddressActivated(long _nativeRef, String address, BoolCallback isActivated);
    }
}
