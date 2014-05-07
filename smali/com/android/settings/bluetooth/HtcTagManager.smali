.class public final Lcom/android/settings/bluetooth/HtcTagManager;
.super Ljava/lang/Object;
.source "HtcTagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HtcTagManager$1;,
        Lcom/android/settings/bluetooth/HtcTagManager$Callback;,
        Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_LE_UUID_BAS:Ljava/lang/String; = "0000180f-0000-1000-8000-00805f9b34fb"

.field public static final BLUETOOTH_LE_UUID_FMP:Ljava/lang/String; = "00001802-0000-1000-8000-00805f9b34fb"

.field public static final BLUETOOTH_LE_UUID_PXP:Ljava/lang/String; = "00001803-0000-1000-8000-00805f9b34fb"

.field public static final BLUETOOTH_LE_UUID_SKP:Ljava/lang/String; = "0daa5375-02d3-4b47-b6b7-53408ff159e5"

.field public static final DEFAULT_START_SERVICES:I = -0x7ffffffd

.field public static DISMISS_ALARM_AFTER_DISMISS_NTF:Z = false

.field public static final EVENT_DISMISS:I = 0x3eb

.field public static final EVENT_FINDPHONE:I = 0x3ea

.field public static final EVENT_FINDTAG:I = 0x3e9

.field public static final EVENT_NONE:I = -0x1

.field public static final EVENT_OUTOFRANGE:I = 0x3ec

.field private static final HTC_TAG_SERVICE_NAME:Ljava/lang/String; = "com.htc.android.bluetooth.le.profile.pxp.IHtcBleProximityService"

.field static final HTC_TAG_UUIDS:[Landroid/os/ParcelUuid; = null

.field public static final SERVICE_ALERT_TIMEOUT:I = 0xff

.field public static final SERVICE_CONNECTED:I = 0x3

.field public static final SERVICE_DISCONNECTED:I = 0x5

.field public static final SERVICE_FINDME_ALERT_BY_TAG:I = 0x111

.field public static final SERVICE_FINDME_COMPLETE:I = 0x101

.field public static final SERVICE_FINDME_FAIL:I = 0x102

.field public static final SERVICE_FINDME_TAG_NOTIFY_DISMISS:I = 0x112

.field public static final SERVICE_PATHLOSS:I = 0xc7

.field public static final SERVICE_TYPE_BATTERY:I = 0x4

.field public static final SERVICE_TYPE_FINDME:I = 0x1

.field public static final SERVICE_TYPE_PROXIMITY:I = 0x2

.field public static final SERVICE_TYPE_READ_BATTERY:I = 0x20000000

.field public static final SERVICE_TYPE_READ_RSSI:I = 0x40000000

.field public static final SERVICE_TYPE_SIMPLEKEY:I = -0x80000000

.field public static final SERVICE_VALUE_BATTERY_LEVEL:I = 0x1820

.field public static final SERVICE_VALUE_FMP_IAS:I = 0x1812

.field public static final SERVICE_VALUE_RSSI:I = 0x1811

.field public static final SERVICE_VALUE_RSSI_MAPPED:I = 0x1812

.field public static SUPPORT_HTC_TAG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcTagManager"


# instance fields
.field public hasLsNotification:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/HtcTagManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDismissWhenProxyReady:Z

.field public mEvent:I

.field public mEventsChanged:Z

.field private final mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

.field private final mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

.field private final mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

.field private mIsProxyReady:Z

.field private final mLocationAgent:Lcom/android/settings/bluetooth/LocationAgent;

.field private final mOutOfRangeTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

.field private mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/os/ParcelUuid;

    const-string v3, "00001802-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "00001803-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "0daa5375-02d3-4b47-b6b7-53408ff159e5"

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "0000180f-0000-1000-8000-00805f9b34fb"

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/settings/bluetooth/HtcTagManager;->HTC_TAG_UUIDS:[Landroid/os/ParcelUuid;

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcTagManager;->SUPPORT_HTC_TAG:Z

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/bluetooth/HtcTagManager;->DISMISS_ALARM_AFTER_DISMISS_NTF:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mOutOfRangeTags:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/bluetooth/LocationAgent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/LocationAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mLocationAgent:Lcom/android/settings/bluetooth/LocationAgent;

    iput-object p2, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    new-instance v0, Lcom/android/settings/bluetooth/HtcTagProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/HtcTagProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    new-instance v0, Lcom/android/settings/bluetooth/HtcPxpProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/HtcPxpProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

    new-instance v0, Lcom/android/settings/bluetooth/HtcFmpProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/HtcFmpProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

    const-string v0, "HtcTagManager"

    const-string v1, "HtcTagManager construction complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/HtcTagManager;Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/HtcTagManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcTagProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcPxpProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcFmpProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/HtcTagManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/HtcTagManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z

    return p1
.end method

.method private dispatchTagAttributesChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/HtcTagManager$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/HtcTagManager$Callback;->onTagAttributesChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dispatchTagConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "HtcTagManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTagConnectionStateChanged :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcTag()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p2, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    invoke-virtual {v0, v1, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

    invoke-virtual {v0, v1, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

    invoke-virtual {v0, v1, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addHtcTagProfiles([Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "HtcTagManager"

    const-string v1, "addHtcTagProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/bluetooth/HtcTagManager;->HTC_TAG_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "00001803-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "00001802-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dismissAll()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mOutOfRangeTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    invoke-interface {v1}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->dismissAll()V

    const-string v1, "HtcTagManager"

    const-string v2, "dismissAll!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z

    goto :goto_0
.end method

.method public findTag(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    invoke-interface {v1, p1}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->findMe(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    invoke-interface {v1}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->stopFindMe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBattery(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v2, 0x0

    const/16 v3, 0x1820

    invoke-interface {v1, p1, v2, v3}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->readServiceIntValue(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getOutOfRangeTagsCopy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mOutOfRangeTags:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 1

    const-string v0, "HTC_TAG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PXP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;

    goto :goto_0

    :cond_1
    const-string v0, "FMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRssi(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v2, 0x0

    const/16 v3, 0x1812

    invoke-interface {v1, p1, v2, v3}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->readServiceIntValue(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isFindMeConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->isConnected(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    const-string v2, "HtcTagManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is findme Connected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "HtcTagManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTagEventChanged(Landroid/bluetooth/BluetoothDevice;III)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v0, -0x1

    if-ne p2, v2, :cond_4

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mLocationAgent:Lcom/android/settings/bluetooth/LocationAgent;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/LocationAgent;->stopTracking(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->dispatchTagConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/HtcTagProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p4, v4, :cond_3

    const/16 v0, 0x3ec

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mOutOfRangeTags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mOutOfRangeTags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mLocationAgent:Lcom/android/settings/bluetooth/LocationAgent;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/LocationAgent;->startTracking(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lcom/android/settings/bluetooth/HtcTagManager;->dispatchTagConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_0

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagManager;->dispatchTagAttributesChanged(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->dispatchTagConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagManager;->dispatchTagAttributesChanged(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/android/settings/bluetooth/HtcTagManager;->dispatchTagConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x3e9

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x3ea

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x3eb

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xff -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_2
        0x111 -> :sswitch_3
        0x112 -> :sswitch_4
    .end sparse-switch
.end method

.method public pushRssiRead(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/high16 v2, 0x4000

    invoke-interface {v1, p1, v2, p2}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->enable(Landroid/bluetooth/BluetoothDevice;IZ)V

    const-string v1, "HtcTagManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push rssi read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/HtcTagManager$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startProxy(Landroid/content/Context;)V
    .locals 4

    const-string v1, "HtcTagManager"

    const-string v2, "startProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcTagManager;->SUPPORT_HTC_TAG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;-><init>(Lcom/android/settings/bluetooth/HtcTagManager;Lcom/android/settings/bluetooth/HtcTagManager$1;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.bluetooth.le.profile.pxp.IHtcBleProximityService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    const-string v2, "Failed to start up IHtcBleProximityService!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopProxy(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "HtcTagManager"

    const-string v2, "stopProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcTagManager;->SUPPORT_HTC_TAG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mServiceListener:Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z

    iput-object v3, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcTagManager"

    const-string v2, "Failed to clean up IHtcBleProximityService!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/HtcTagManager$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
