.class public Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsTogglePreference;
.source "HtcBluetoothTetheringSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

.field private mIsBtDisable:Z

.field private mIsTetherDisable:Z

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestoreToDisableBt:Z

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->DEBUG:Z

    const-class v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->init()V

    return-void
.end method

.method private GetBluetoothTetheringState()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private UpdateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    if-eqz v15, :cond_2

    :cond_0
    sget-object v15, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->TAG:Ljava/lang/String;

    const-string v16, "EAS policy block BT Tethering"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v2, p3

    array-length v10, v2

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v13, v2, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v11, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_4

    aget-object v12, v3, v8

    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v15, 0xd

    if-ne v7, v15, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const v15, 0x7f0c0bc7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_3
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "tethering_blocked"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const v15, 0x7f0c0a5b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    goto :goto_0

    :cond_6
    const/16 v15, 0xb

    if-ne v7, v15, :cond_7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const v15, 0x7f0c0bc6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    const/16 v15, 0xc

    if-ne v7, v15, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    const/4 v15, 0x1

    if-le v6, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0c0ee2

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    const/4 v15, 0x1

    if-ne v6, v15, :cond_9

    const v15, 0x7f0c0ee1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_9
    if-eqz v4, :cond_a

    const v15, 0x7f0c0ee4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_a
    const v15, 0x7f0c0ee0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    const v15, 0x7f0c0900

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_3
.end method

.method private UpdateEasPolicy(ZZ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    if-eqz v4, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    iput-boolean p2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    move v1, v3

    :goto_1
    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_5

    sget-object v3, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EAS policy block BT Tethering : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0c0a86

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V

    goto :goto_2
.end method

.method private UpdateState()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private UpdateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateEasPolicy(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z

    return v0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    array-length v5, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    move-object v1, p1

    array-length v6, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private init()V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v9, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    :cond_0
    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mLayoutFactory:Landroid/view/LayoutInflater;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v0, v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothRegexs:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_3

    move v1, v7

    :goto_0
    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldRestoreBluetoothState(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v3

    invoke-interface {v3, v12}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v9

    if-nez v9, :cond_5

    move v4, v7

    :goto_2
    invoke-interface {v3, v12}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateEasPolicy(ZZ)V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V

    return-void

    :cond_3
    move v1, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    goto :goto_1

    :cond_5
    move v4, v8

    goto :goto_2

    :cond_6
    move v5, v8

    goto :goto_3
.end method

.method private registerTetherReceiver(Z)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private turnOnBluetoothTethering(Z)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->turnOnBluetoothTethering()I

    move-result v6

    const/16 v8, 0xa

    if-ne v6, v8, :cond_0

    iput-boolean v11, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v11}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistRestoreBluetoothState(Landroid/content/Context;Z)V

    const v8, 0x7f0c0bc6

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const v8, 0x7f0c0ee0

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v10}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    if-eqz v8, :cond_4

    iput-boolean v10, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z

    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v10}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistRestoreBluetoothState(Landroid/content/Context;Z)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_4
    if-eqz v4, :cond_5

    const v8, 0x7f0c0ee4

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :cond_5
    const v8, 0x7f0c0900

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.HtcBluetoothTetherWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x7f0c0bc7

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0c0edf

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c0edf

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->TAG:Ljava/lang/String;

    const-string v4, "Error cleaning up PAN proxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->GetBluetoothTetheringState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->registerTetherReceiver(Z)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->registerTetherReceiver(Z)V

    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onToggleChange(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->turnOnBluetoothTethering(Z)V

    const/4 v0, 0x1

    return v0
.end method
