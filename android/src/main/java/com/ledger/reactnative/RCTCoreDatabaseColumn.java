// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

package com.ledger.reactnative;

import co.ledger.core.DatabaseColumn;
import co.ledger.core.DatabaseValueType;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/** An object holding metadata information about a single SQL column (type, name...). */
@ReactModule(name = "RCTCoreDatabaseColumn")
public class RCTCoreDatabaseColumn extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, DatabaseColumnImpl> javaObjects;
    public Map<String, DatabaseColumnImpl> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreDatabaseColumn(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, DatabaseColumnImpl>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreDatabaseColumn";
    }
    @ReactMethod
    public void newInstance(Promise promise)
    {
        DatabaseColumnImpl newInstance = new DatabaseColumnImpl(this.reactContext);
        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, newInstance);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreDatabaseColumn");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCoreDatabaseColumn", "First parameter of RCTCoreDatabaseColumn::release should be an instance of RCTCoreDatabaseColumn");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, DatabaseColumnImpl> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }

    /**
     * Get the type of the underlying SQL value.
     * @return The type of th
     */
    @ReactMethod
    public void getType(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseColumnImpl currentInstanceObj = this.javaObjects.get(sUid);

            DatabaseValueType javaResult = currentInstanceObj.getType();
            WritableNativeMap result = new WritableNativeMap();
            int finalJavaResult = javaResult.ordinal();
            result.putInt("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void getName(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseColumnImpl currentInstanceObj = this.javaObjects.get(sUid);

            String javaResult = currentInstanceObj.getName();
            WritableNativeMap result = new WritableNativeMap();
            result.putString("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}