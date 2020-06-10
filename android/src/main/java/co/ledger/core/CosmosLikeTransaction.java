// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

package co.ledger.core;

import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;

/**Class representing a Cosmos transaction */
public abstract class CosmosLikeTransaction {
    /** Get the time when the transaction was issued or the time of the block including this transaction */
    public abstract Date getDate();

    /** Get Fee (in drop) */
    public abstract Amount getFee();

    /** Get gas Wanted (maximum gas advertised in transaction) */
    public abstract Amount getGas();

    /** Get gas used (gas actually used in the transaction) */
    public abstract BigInt getGasUsed();

    /** Get gas Wanted (in BigInt form) */
    public abstract BigInt getGasWanted();

    /** Get the hash of the transaction. */
    public abstract String getHash();

    /** Get memo */
    public abstract String getMemo();

    /** Get the list of messages */
    public abstract ArrayList<CosmosLikeMessage> getMessages();

    /** Get Signing public Key */
    public abstract byte[] getSigningPubKey();

    /** Serialize the transaction to be signed */
    public abstract String serializeForSignature();

    /** Set signature of transaction, when a signature is set it can be broadcasted */
    public abstract void setSignature(byte[] rSignature, byte[] sSignature);

    public abstract void setDERSignature(byte[] signature);

    /**
     * Serialize the transaction to be broadcast
     * @param mode The supported broadcast modes include
     *        "block"(return after tx commit), (https://docs.cosmos.network/master/basics/tx-lifecycle.html#commit)
     *        "sync"(return afer CheckTx), (https://docs.cosmos.network/master/basics/tx-lifecycle.html#types-of-checks) and
     *        "async"(return right away).
     * @return string the json payload to broadcast on the network
     */
    public abstract String serializeForBroadcast(String mode);

    private static final class CppProxy extends CosmosLikeTransaction
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
        public Date getDate()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getDate(this.nativeRef);
        }
        private native Date native_getDate(long _nativeRef);

        @Override
        public Amount getFee()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getFee(this.nativeRef);
        }
        private native Amount native_getFee(long _nativeRef);

        @Override
        public Amount getGas()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getGas(this.nativeRef);
        }
        private native Amount native_getGas(long _nativeRef);

        @Override
        public BigInt getGasUsed()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getGasUsed(this.nativeRef);
        }
        private native BigInt native_getGasUsed(long _nativeRef);

        @Override
        public BigInt getGasWanted()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getGasWanted(this.nativeRef);
        }
        private native BigInt native_getGasWanted(long _nativeRef);

        @Override
        public String getHash()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getHash(this.nativeRef);
        }
        private native String native_getHash(long _nativeRef);

        @Override
        public String getMemo()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getMemo(this.nativeRef);
        }
        private native String native_getMemo(long _nativeRef);

        @Override
        public ArrayList<CosmosLikeMessage> getMessages()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getMessages(this.nativeRef);
        }
        private native ArrayList<CosmosLikeMessage> native_getMessages(long _nativeRef);

        @Override
        public byte[] getSigningPubKey()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSigningPubKey(this.nativeRef);
        }
        private native byte[] native_getSigningPubKey(long _nativeRef);

        @Override
        public String serializeForSignature()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_serializeForSignature(this.nativeRef);
        }
        private native String native_serializeForSignature(long _nativeRef);

        @Override
        public void setSignature(byte[] rSignature, byte[] sSignature)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setSignature(this.nativeRef, rSignature, sSignature);
        }
        private native void native_setSignature(long _nativeRef, byte[] rSignature, byte[] sSignature);

        @Override
        public void setDERSignature(byte[] signature)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setDERSignature(this.nativeRef, signature);
        }
        private native void native_setDERSignature(long _nativeRef, byte[] signature);

        @Override
        public String serializeForBroadcast(String mode)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_serializeForBroadcast(this.nativeRef, mode);
        }
        private native String native_serializeForBroadcast(long _nativeRef, String mode);
    }
}