.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final NOTIFICATION_TAG_FTP:Ljava/lang/String; = "File Access"

.field private static final NOTIFICATION_TAG_MAP:Ljava/lang/String; = "Message Access"

.field private static final NOTIFICATION_TAG_PBAP:Ljava/lang/String; = "Phonebook Access"

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->V:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 12

    .prologue
    .line 176
    const/4 v7, 0x0

    .line 179
    .local v7, processed:Z
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/16 v10, 0xb

    if-eq v9, v10, :cond_1

    .line 182
    sget-boolean v9, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown RequestType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v8, v7

    .line 257
    .end local v7           #processed:Z
    .local v8, processed:I
    :goto_0
    return v8

    .line 186
    .end local v8           #processed:I
    .restart local v7       #processed:Z
    :cond_1
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 187
    .local v0, bluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 189
    .local v2, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 191
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 196
    :cond_2
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 198
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v6

    .line 200
    .local v6, phonebookPermission:I
    if-nez v6, :cond_3

    move v8, v7

    .line 201
    .restart local v8       #processed:I
    goto :goto_0

    .line 204
    .end local v8           #processed:I
    :cond_3
    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 205
    .local v4, intentName:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_6

    .line 206
    const/4 v9, 0x1

    const-string v10, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v11, 0x1

    invoke-direct {p0, v4, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 207
    const/4 v7, 0x1

    .line 256
    .end local v4           #intentName:Ljava/lang/String;
    .end local v6           #phonebookPermission:I
    :cond_4
    :goto_1
    sget-boolean v9, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkUserChoice(): returning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v8, v7

    .line 257
    .restart local v8       #processed:I
    goto :goto_0

    .line 208
    .end local v8           #processed:I
    .restart local v4       #intentName:Ljava/lang/String;
    .restart local v6       #phonebookPermission:I
    :cond_6
    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    .line 209
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v4, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 211
    const/4 v7, 0x1

    goto :goto_1

    .line 213
    :cond_7
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad phonebookPermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    .end local v4           #intentName:Ljava/lang/String;
    .end local v6           #phonebookPermission:I
    :cond_8
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_c

    .line 218
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v5

    .line 220
    .local v5, messagePermission:I
    if-nez v5, :cond_9

    move v8, v7

    .line 221
    .restart local v8       #processed:I
    goto/16 :goto_0

    .line 224
    .end local v8           #processed:I
    :cond_9
    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 225
    .restart local v4       #intentName:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v5, v9, :cond_a

    .line 226
    const/4 v9, 0x1

    const-string v10, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v11, 0x1

    invoke-direct {p0, v4, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 227
    const/4 v7, 0x1

    goto :goto_1

    .line 228
    :cond_a
    const/4 v9, 0x2

    if-ne v5, v9, :cond_b

    .line 229
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v4, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 231
    const/4 v7, 0x1

    goto :goto_1

    .line 233
    :cond_b
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad messagePermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 236
    .end local v4           #intentName:Ljava/lang/String;
    .end local v5           #messagePermission:I
    :cond_c
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_4

    .line 238
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getFilePermissionChoice()I

    move-result v3

    .line 240
    .local v3, filePermission:I
    if-nez v3, :cond_d

    move v8, v7

    .line 241
    .restart local v8       #processed:I
    goto/16 :goto_0

    .line 244
    .end local v8           #processed:I
    :cond_d
    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    .line 245
    .restart local v4       #intentName:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v3, v9, :cond_e

    .line 246
    const/4 v9, 0x1

    const-string v10, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v11, 0x1

    invoke-direct {p0, v4, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 247
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 248
    :cond_e
    const/4 v9, 0x2

    if-ne v3, v9, :cond_f

    .line 249
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v4, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 251
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 253
    :cond_f
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad filePermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getNotificationTag(I)Ljava/lang/String;
    .locals 2
    .parameter "requestType"

    .prologue
    .line 160
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 161
    const-string v0, "Phonebook Access"

    .line 167
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 163
    const-string v0, "Message Access"

    goto :goto_0

    .line 164
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 165
    const-string v0, "File Access"

    goto :goto_0

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    if-eqz p3, :cond_1

    .line 273
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 278
    return-void

    .line 268
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, action:Ljava/lang/String;
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "BluetoothPermissionRequest"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 61
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    iput-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 62
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 64
    const-string v12, "android.bluetooth.device.extra.PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    .line 65
    const-string v12, "android.bluetooth.device.extra.CLASS_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    .line 67
    sget-boolean v12, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "BluetoothPermissionRequest"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive request type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " return "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 157
    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, connectionAccessIntent:Landroid/content/Intent;
    const-class v12, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    const/high16 v12, 0x1800

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string v12, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v12, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, deviceAddress:Ljava/lang/String;
    :goto_1
    const/4 v11, 0x0

    .line 92
    .local v11, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 93
    .local v7, message:Ljava/lang/String;
    const-string v12, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 96
    .local v10, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 98
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v4           #deviceAddress:Ljava/lang/String;
    .end local v7           #message:Ljava/lang/String;
    .end local v10           #powerManager:Landroid/os/PowerManager;
    .end local v11           #title:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 105
    .restart local v4       #deviceAddress:Ljava/lang/String;
    .restart local v7       #message:Ljava/lang/String;
    .restart local v10       #powerManager:Landroid/os/PowerManager;
    .restart local v11       #title:Ljava/lang/String;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, deleteIntent:Landroid/content/Intent;
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    const-string v12, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v13, 0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v13, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, deviceName:Ljava/lang/String;
    :goto_2
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    sparse-switch v12, :sswitch_data_0

    .line 125
    const v12, 0x7f0c0bc9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 126
    const v12, 0x7f0c0bcb

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 129
    :goto_3
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const v13, 0x1080080

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 142
    .local v8, notification:Landroid/app/Notification;
    iget v12, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v8, Landroid/app/Notification;->flags:I

    .line 144
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 147
    .local v9, notificationManager:Landroid/app/NotificationManager;
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, v12}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x1080080

    invoke-virtual {v9, v12, v13, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 110
    .end local v5           #deviceName:Ljava/lang/String;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #notificationManager:Landroid/app/NotificationManager;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 113
    .restart local v5       #deviceName:Ljava/lang/String;
    :sswitch_0
    const v12, 0x7f0c0bcc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 114
    const v12, 0x7f0c0bcd

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 115
    goto/16 :goto_3

    .line 117
    :sswitch_1
    const v12, 0x7f0c0bd0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 118
    const v12, 0x7f0c0adc

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 119
    goto/16 :goto_3

    .line 121
    :sswitch_2
    const v12, 0x7f0c03e2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 122
    const v12, 0x7f0c0add

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 123
    goto/16 :goto_3

    .line 149
    .end local v2           #connectionAccessIntent:Landroid/content/Intent;
    .end local v3           #deleteIntent:Landroid/content/Intent;
    .end local v4           #deviceAddress:Ljava/lang/String;
    .end local v5           #deviceName:Ljava/lang/String;
    .end local v7           #message:Ljava/lang/String;
    .end local v10           #powerManager:Landroid/os/PowerManager;
    .end local v11           #title:Ljava/lang/String;
    :cond_7
    const-string v12, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 151
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 153
    .local v6, manager:Landroid/app/NotificationManager;
    const-string v12, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    .line 155
    iget v12, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-direct {p0, v12}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->getNotificationTag(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x1080080

    invoke-virtual {v6, v12, v13}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
