.class public Lcom/android/settings/ApnEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;"
    }
.end annotation


# static fields
.field private static final ALLOWSAVE:Ljava/lang/String; = "allowsave"

.field private static final APN_INDEX:I = 0x2

.field public static final APN_MODE_CPA:Ljava/lang/String; = "NAVI"

.field public static final APN_MODE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final AUTH_TYPE_INDEX:I = 0xf

.field private static final BEARER_INDEX:I = 0x14

.field private static final CARRIER_ENABLED_INDEX:I = 0x13

.field private static final CPA_DEFAULT_VALUE:Ljava/lang/String; = "cpa_default"

.field public static final CPA_KEY_DNS1:Ljava/lang/String; = "dns1"

.field public static final CPA_KEY_DNS2:Ljava/lang/String; = "dns2"

.field private static final DATA_BEARER_INDEX:I = 0x16

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEFAULT_MMSPROTOCOL_VALUEINDEX:I = 0x0

.field private static final DNS1_INDEX:I = 0x16

.field private static final DNS2_INDEX:I = 0x17

.field private static final EDITABLE:Ljava/lang/String; = "editable"

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ERROR_DIALOG_INVALID_APN:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final FLAG_PPP_NUMBER_DATA_BEARER:Z = false

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x11

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_DNS1:Ljava/lang/String; = "apn_dns1"

.field private static final KEY_DNS2:Ljava/lang/String; = "apn_dns2"

.field private static final KEY_MMSPROTOCOL_PREF:Ljava/lang/String; = "apn_mms_protocol"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final KEY_USERNAME:Ljava/lang/String; = "user"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROCTOL_SELECTED:Ljava/lang/String; = "mmsprotocol"

.field private static final MMSPROTOCOL_INDEX:I = 0xe

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PPP_NUMBER_INDEX:I = 0x17

.field public static PROPERTY_CID:Ljava/lang/String; = null

.field public static PROPERTY_LTE_BL:Ljava/lang/String; = null

.field private static final PROTOCOL_INDEX:I = 0x12

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x15

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_INDEX:I = 0x10

.field private static final USER_INDEX:I = 0x5

.field private static mCurrentPhoneType:I

.field private static sNotSet:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Lcom/htc/preference/HtcEditTextPreference;

.field private mApnAuthTypeEntriesId:I

.field private mApnProtocolEntriesId:I

.field private mApnType:Lcom/htc/preference/HtcEditTextPreference;

.field private mAuthType:Lcom/htc/preference/HtcListPreference;

.field private mBearer:Lcom/htc/preference/HtcListPreference;

.field private mBearerEntriesId:I

.field private mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

.field private mDns1:Lcom/htc/preference/HtcEditTextPreference;

.field private mDns2:Lcom/htc/preference/HtcEditTextPreference;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mInsertUri:Landroid/net/Uri;

.field private mIsCPA:Z

.field private mIsInForeground:Z

.field private mIsMVNO:Z

.field private mMcc:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsProtocol:Lcom/htc/preference/HtcListPreference;

.field private mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

.field private mMmsc:Lcom/htc/preference/HtcEditTextPreference;

.field private mMnc:Lcom/htc/preference/HtcEditTextPreference;

.field private mName:Lcom/htc/preference/HtcEditTextPreference;

.field private mNetShareExists:Z

.field private mNewApn:Z

.field private mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

.field private mPassword:Lcom/htc/preference/HtcEditTextPreference;

.field private mPort:Lcom/htc/preference/HtcEditTextPreference;

.field private mProtocol:Lcom/htc/preference/HtcListPreference;

.field private mProxy:Lcom/htc/preference/HtcEditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRestoreRequired:Z

.field private mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

.field private mSave:Z

.field private mServer:Lcom/htc/preference/HtcEditTextPreference;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

.field private mUri:Landroid/net/Uri;

.field private mUser:Lcom/htc/preference/HtcEditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 81
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ApnEditor;->DBG:Z

    .line 119
    invoke-static {}, Lcom/android/settings/ApnSettings;->isDisplayPPPNumberDataBearer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v3, "46605"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    .line 181
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v1

    const-string v3, "name"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "apn"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "proxy"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "port"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "user"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "server"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "password"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "mmsc"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "mcc"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "mnc"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "numeric"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "mmsproxy"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "mmsport"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "mmsprotocol"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "authtype"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "type"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "insert_by"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "protocol"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "carrier_enabled"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "bearer"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "roaming_protocol"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "dns1"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "dns2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 248
    sput v1, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    .line 1834
    const-string v0, "ro.cid"

    sput-object v0, Lcom/android/settings/ApnEditor;->PROPERTY_CID:Ljava/lang/String;

    .line 1835
    const-string v0, "ro.telephony.bl"

    sput-object v0, Lcom/android/settings/ApnEditor;->PROPERTY_LTE_BL:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 119
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 157
    const v0, 0x7f08002d

    iput v0, p0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    .line 158
    const v0, 0x7f08002b

    iput v0, p0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    .line 160
    const v0, 0x7f0800d0

    iput v0, p0, Lcom/android/settings/ApnEditor;->mApnAuthTypeEntriesId:I

    .line 169
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsMVNO:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 1818
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    return-void
.end method

.method private APNContentFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1462
    const-string v2, "UserIDFormat "

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1463
    const/4 v1, 0x0

    .line 1464
    .local v1, idForbit:Z
    const-string v0, ".au-net.ne.jp"

    .line 1466
    .local v0, forbiddenID:Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1467
    :cond_0
    const-string v2, "value is empty."

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1468
    const-string p1, ""

    .line 1473
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1469
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1470
    const-string v2, "include forbit alpha."

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1471
    const-string p1, ""

    goto :goto_0
.end method

.method private DnsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1483
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_2

    .line 1484
    :cond_0
    const-string v2, "value format is not correct!"

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1485
    const-string p1, ""

    .line 1495
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1487
    .restart local p1
    :cond_2
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1489
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_4

    .line 1490
    :cond_3
    const-string v2, "DNS content is not correct!"

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1491
    const-string p1, ""

    goto :goto_0

    .line 1488
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1737
    sget-boolean v0, Lcom/android/settings/ApnEditor;->DBG:Z

    if-eqz v0, :cond_0

    .line 1738
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_0
    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 1743
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    return-void
.end method

.method private UserIDFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0x2e

    const/16 v10, 0x2d

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1499
    const-string v5, "UserIDFormat "

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1500
    const/4 v1, 0x0

    .line 1501
    .local v1, idForbit:Z
    const-string v0, ".au-net.ne.jp"

    .line 1503
    .local v0, forbiddenID:Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1504
    :cond_0
    const-string v5, "value is empty."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1505
    const-string p1, ""

    .line 1582
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1506
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1507
    const-string v5, "include forbit alpha."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1508
    const-string p1, ""

    goto :goto_0

    .line 1511
    :cond_3
    const-string v5, "\\@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, temp:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v5, v4

    if-eq v5, v9, :cond_4

    .line 1514
    const-string v5, "format is not right."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1515
    const/4 v1, 0x1

    .line 1516
    const-string p1, ""

    goto :goto_0

    .line 1518
    :cond_4
    aget-object v5, v4, v7

    if-eqz v5, :cond_e

    .line 1519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userId is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1521
    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_5

    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x18

    if-le v5, v6, :cond_6

    .line 1522
    :cond_5
    const-string v5, "length incorrect."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1523
    const/4 v1, 0x1

    .line 1524
    const-string p1, ""

    goto :goto_0

    .line 1526
    :cond_6
    aget-object v5, v4, v7

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v4, v7

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1528
    :cond_7
    const-string v5, "end with invalid char."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1529
    const/4 v1, 0x1

    .line 1530
    const-string p1, ""

    goto/16 :goto_0

    .line 1532
    :cond_8
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 1533
    const/16 v5, 0x30

    aget-object v6, v4, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_9

    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_c

    :cond_9
    const/16 v5, 0x61

    aget-object v6, v4, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_a

    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7a

    if-le v5, v6, :cond_c

    :cond_a
    const/16 v5, 0x41

    aget-object v6, v4, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_b

    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-le v5, v6, :cond_c

    :cond_b
    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_c

    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_c

    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_c

    aget-object v5, v4, v7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_d

    .line 1532
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1537
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userID include invalid char: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1538
    const/4 v1, 0x1

    .line 1539
    const-string p1, ""

    goto/16 :goto_0

    .line 1545
    .end local v2           #index:I
    :cond_e
    array-length v5, v4

    if-ne v5, v9, :cond_18

    aget-object v5, v4, v8

    if-eqz v5, :cond_18

    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "domain is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1547
    aget-object v5, v4, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_f

    aget-object v5, v4, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_10

    .line 1548
    :cond_f
    const-string v5, "length incorrect."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1549
    const/4 v1, 0x1

    .line 1550
    const-string p1, ""

    goto/16 :goto_0

    .line 1552
    :cond_10
    aget-object v5, v4, v8

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    aget-object v5, v4, v8

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    aget-object v5, v4, v7

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    aget-object v5, v4, v7

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1554
    :cond_11
    const-string v5, "domian endwith invalid char"

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1555
    const/4 v1, 0x1

    .line 1556
    const-string p1, ""

    goto/16 :goto_0

    .line 1558
    :cond_12
    const/4 v3, 0x1

    .line 1559
    .local v3, numberInDomain:Z
    const/4 v2, 0x0

    .restart local v2       #index:I
    :goto_2
    aget-object v5, v4, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

    .line 1560
    const/16 v5, 0x61

    aget-object v6, v4, v8

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_13

    aget-object v5, v4, v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7a

    if-le v5, v6, :cond_14

    :cond_13
    aget-object v5, v4, v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_14

    aget-object v5, v4, v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_15

    .line 1562
    :cond_14
    const/4 v3, 0x0

    .line 1559
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1563
    :cond_15
    const/16 v5, 0x30

    aget-object v6, v4, v8

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_16

    aget-object v5, v4, v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_16

    .line 1564
    const-string v5, "do nothing, and continue to check the next char."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    goto :goto_3

    .line 1566
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Domain include invalid char: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1567
    const/4 v1, 0x1

    .line 1568
    const-string p1, ""

    goto/16 :goto_0

    .line 1571
    :cond_17
    if-eqz v3, :cond_18

    .line 1572
    const-string v5, "only have numbers in Domain."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1573
    const/4 v1, 0x1

    .line 1574
    const-string p1, ""

    goto/16 :goto_0

    .line 1579
    .end local v2           #index:I
    .end local v3           #numberInDomain:Z
    :cond_18
    if-eqz v1, :cond_1

    .line 1580
    const-string p1, ""

    goto/16 :goto_0
.end method

.method private UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 1587
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "UserPwdFormat "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1590
    :cond_0
    const-string p1, ""

    .line 1594
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1591
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 1592
    :cond_3
    const-string p1, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/ApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->backKeyEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    return v0
.end method

.method private backKeyEvent()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, result:Z
    sget-boolean v1, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v1, :cond_4

    .line 1788
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->canSaved()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1792
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    .line 1802
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    if-eqz v1, :cond_3

    .line 1803
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    if-eqz v1, :cond_3

    .line 1804
    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1805
    const v1, 0x7f0c04d5

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1806
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 1807
    const/4 v0, 0x1

    .line 1811
    :cond_3
    return v0

    .line 1795
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->canSaved()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1798
    :cond_6
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    goto :goto_0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 923
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 924
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 936
    :goto_0
    return-object v3

    .line 931
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private canSaved()Z
    .locals 2

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1008
    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    const/4 v1, 0x0

    .line 1012
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1453
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    :cond_0
    const-string p1, ""

    .line 1456
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1445
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1446
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1448
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1428
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1429
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 1430
    return-void
.end method

.method private fillUi()V
    .locals 23

    .prologue
    .line 673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 674
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 675
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_0

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "CPA"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 677
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    .line 684
    :cond_0
    const-string v20, "cpa_default"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ApnEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 685
    .local v14, prefs:Landroid/content/SharedPreferences;
    const-string v20, "name"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 686
    .local v11, name:Ljava/lang/String;
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 688
    sget-object v20, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "get orginal CPA data! "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v20, "apn"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, apn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 691
    const-string v20, "proxy"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 692
    .local v15, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 693
    const-string v20, "port"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 694
    .local v16, proxyPort:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 695
    const-string v20, "user"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 696
    .local v18, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 697
    const-string v20, "password"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 698
    .local v13, passWd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 699
    const-string v20, "authtype"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 701
    .local v4, authVal:I
    if-ltz v4, :cond_7

    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v4, v0, :cond_7

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 707
    :goto_0
    const-string v20, "dns1"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 708
    .local v6, dns1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 709
    const-string v20, "dns2"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, dns2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 711
    const-string v20, "server"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 712
    .local v17, server:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 749
    .end local v3           #apn:Ljava/lang/String;
    .end local v6           #dns1:Ljava/lang/String;
    .end local v7           #dns2:Ljava/lang/String;
    .end local v13           #passWd:Ljava/lang/String;
    .end local v15           #proxyHost:Ljava/lang/String;
    .end local v16           #proxyPort:Ljava/lang/String;
    .end local v17           #server:Ljava/lang/String;
    .end local v18           #userId:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xe

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 752
    .local v9, mmsprotocol:Ljava/lang/String;
    if-eqz v9, :cond_d

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 757
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x10

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 765
    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .line 773
    .local v12, numeric:Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 775
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 777
    .local v8, mcc:Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 779
    .local v10, mnc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 782
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 786
    .end local v8           #mcc:Ljava/lang/String;
    .end local v10           #mnc:Ljava/lang/String;
    .end local v12           #numeric:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x12

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x15

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v22, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 796
    sget-boolean v20, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v20, :cond_2

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x16

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x17

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 803
    .end local v4           #authVal:I
    .end local v9           #mmsprotocol:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v20

    const-string v21, "CPA"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 819
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    .line 821
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mIsCPA - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 822
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 827
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, authVal:Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 829
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 830
    .local v5, authValIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f080029

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 833
    .local v19, values:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    aget-object v21, v19, v5

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 839
    .end local v5           #authValIndex:I
    .end local v19           #values:[Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 860
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 887
    :cond_5
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    const-string v20, "0"

    const-string v21, "htc.apnsettings.tester"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 890
    sget-object v20, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "Name setEnabled false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_6
    :goto_5
    return-void

    .line 704
    .restart local v3       #apn:Ljava/lang/String;
    .local v4, authVal:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v13       #passWd:Ljava/lang/String;
    .restart local v14       #prefs:Landroid/content/SharedPreferences;
    .restart local v15       #proxyHost:Ljava/lang/String;
    .restart local v16       #proxyPort:Ljava/lang/String;
    .restart local v18       #userId:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 716
    .end local v3           #apn:Ljava/lang/String;
    .end local v4           #authVal:I
    .end local v13           #passWd:Ljava/lang/String;
    .end local v15           #proxyHost:Ljava/lang/String;
    .end local v16           #proxyPort:Ljava/lang/String;
    .end local v18           #userId:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xf

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 724
    .restart local v4       #authVal:I
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 725
    if-ltz v4, :cond_a

    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v4, v0, :cond_a

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 740
    :goto_6
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x16

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 742
    .restart local v6       #dns1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x17

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 744
    .restart local v7       #dns2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 746
    .end local v6           #dns1:Ljava/lang/String;
    .end local v7           #dns2:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 728
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_6

    .line 731
    :cond_b
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_c

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_6

    .line 736
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 755
    .restart local v9       #mmsprotocol:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_2

    .line 788
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 835
    .end local v9           #mmsprotocol:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v14           #prefs:Landroid/content/SharedPreferences;
    .local v4, authVal:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 892
    :cond_10
    sget-object v20, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "mName is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public static getApnApnBlackList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1867
    new-array v2, v4, [Ljava/lang/String;

    .line 1868
    .local v2, resultList:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getDeviceType()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 1877
    .local v0, isTablet:Z
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 1878
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "phone"

    aput-object v5, v1, v4

    const-string v4, "wap.cingular"

    aput-object v4, v1, v3

    .line 1879
    .local v1, list:[Ljava/lang/String;
    move-object v2, v1

    .line 1881
    .end local v1           #list:[Ljava/lang/String;
    :cond_0
    return-object v2

    .end local v0           #isTablet:Z
    :cond_1
    move v0, v4

    .line 1868
    goto :goto_0
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 1326
    const/4 v1, 0x0

    .line 1328
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1329
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1331
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1333
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_9

    .line 1334
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1345
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v5, :cond_8

    .line 1346
    const-string v5, "0"

    const-string v6, "htc.apnsettings.tester"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1347
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1348
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->APNContentFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1349
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c04d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1353
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1355
    :cond_3
    sget-object v5, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v6, "password or id is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 1360
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->UserIDFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1361
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b39

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1364
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 1365
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1366
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b3a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1371
    :cond_6
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 1372
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1373
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b3c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1377
    :cond_7
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 1378
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1379
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b3d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1384
    :cond_8
    return-object v1

    .line 1335
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_a

    .line 1336
    sget-boolean v5, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-nez v5, :cond_0

    .line 1337
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1339
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    .line 1340
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1341
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1342
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getInvalidApnErrorMsg(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .parameter "res"

    .prologue
    .line 1885
    const/4 v1, 0x0

    .line 1886
    .local v1, errorMsg:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1888
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1889
    const v2, 0x7f0c0ae7

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1896
    :cond_0
    :goto_0
    return-object v1

    .line 1891
    :catch_0
    move-exception v0

    .line 1892
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "getInvalidApnErrorMsg Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1893
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLteModeBlackList()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1837
    sget-object v2, Lcom/android/settings/ApnEditor;->PROPERTY_CID:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1838
    .local v1, cid:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/ApnEditor;->PROPERTY_LTE_BL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, blackList:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1840
    sget-object v2, Lcom/android/settings/ApnEditor;->PROPERTY_LTE_BL:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    :cond_0
    sget-boolean v2, Lcom/android/settings/ApnEditor;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLteModeBlackList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_1
    return-object v0
.end method

.method private static getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1620
    const-string v0, "gsm.sim.operator.numeric"

    .line 1621
    .local v0, keyString:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1622
    const-string v0, "gsm.gsm.sim.operator.numeric"

    .line 1630
    :cond_0
    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1623
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    sget v1, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1625
    const-string v0, "gsm.gsm.sim.operator.numeric"

    goto :goto_0

    .line 1626
    :cond_2
    sget v1, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1627
    const-string v0, "gsm.sub.icc.operator.numeric"

    goto :goto_0
.end method

.method public static isCapabilityEnabled(I)Z
    .locals 6
    .parameter "capability"

    .prologue
    .line 1723
    const/4 v3, 0x0

    .line 1724
    .local v3, isCapabilityEnabled:Z
    const/4 v1, -0x1

    .line 1726
    .local v1, currentRATCapability:I
    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1727
    .local v0, class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "BUILT_RAT_CAPABILITIES"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1728
    and-int v4, p0, v1

    if-ne p0, v4, :cond_0

    const/4 v3, 0x1

    .line 1733
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 1728
    .restart local v0       #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1729
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 1730
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "isCapabilitiesEnabled Exception"

    invoke-static {v4, v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1731
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isLTE()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1684
    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->isSIMInLTEBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1687
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTEBoundUMTS()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTEBoundCDMA()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLTEBoundCDMA()Z
    .locals 6

    .prologue
    .line 1708
    const/4 v2, 0x0

    .line 1709
    .local v2, isLTEBoundCDMA:Z
    const/4 v3, -0x1

    .line 1711
    .local v3, ratLteCdma:I
    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1712
    .local v0, class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1713
    invoke-static {v3}, Lcom/android/settings/ApnEditor;->isCapabilityEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1718
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTEBoundCDMA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1719
    return v2

    .line 1714
    :catch_0
    move-exception v1

    .line 1715
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "isLTEBoundCDMA Exception"

    invoke-static {v4, v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1716
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLTEBoundUMTS()Z
    .locals 6

    .prologue
    .line 1693
    const/4 v2, 0x0

    .line 1694
    .local v2, isLTEBoundUMTS:Z
    const/4 v3, -0x1

    .line 1696
    .local v3, ratLteUmts:I
    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1697
    .local v0, class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "BUILT_RAT_MAIN_FLAG_LTE_BOUND_UMTS"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1698
    invoke-static {v3}, Lcom/android/settings/ApnEditor;->isCapabilityEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1703
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTEBoundUMTS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1704
    return v2

    .line 1699
    :catch_0
    move-exception v1

    .line 1700
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "isLTEBoundUMTS Exception"

    invoke-static {v4, v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1701
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSIMInLTEBlackList(Ljava/lang/String;)Z
    .locals 9
    .parameter "simMccMnc"

    .prologue
    .line 1847
    const/4 v5, 0x0

    .line 1848
    .local v5, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1849
    invoke-static {}, Lcom/android/settings/ApnEditor;->getLteModeBlackList()Ljava/lang/String;

    move-result-object v3

    .line 1850
    .local v3, lteBlackList:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1851
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1852
    .local v4, plmn:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1853
    const/4 v5, 0x1

    .line 1859
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #lteBlackList:Ljava/lang/String;
    .end local v4           #plmn:Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/android/settings/ApnEditor;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSIMInLTEBlackList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_1
    return v5

    .line 1851
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #lteBlackList:Ljava/lang/String;
    .restart local v4       #plmn:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isSupportBearer()Z
    .locals 4

    .prologue
    .line 1665
    const/4 v0, 0x0

    .line 1666
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    const/4 v0, 0x1

    .line 1669
    :cond_0
    invoke-static {}, Lcom/android/settings/ApnSettings;->isForceHideBearer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1670
    const/4 v0, 0x0

    .line 1674
    :cond_1
    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->isHideCTLTE(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/ApnSettings;->isEnableDualPreferAPN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1675
    :cond_2
    const/4 v0, 0x0

    .line 1678
    :cond_3
    sget-boolean v1, Lcom/android/settings/ApnEditor;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportBearer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_4
    return v0
.end method

.method public static isSupportDualStackIPv4IPv6()Z
    .locals 3

    .prologue
    .line 1654
    const/4 v0, 0x1

    .line 1655
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportDualStackIPv4IPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1656
    return v0
.end method

.method public static isSupportIPv6()Z
    .locals 3

    .prologue
    .line 1641
    const/4 v0, 0x0

    .line 1642
    .local v0, result:Z
    const-string v1, "ro.telephony.ipv6_capability"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1643
    const/4 v0, 0x1

    .line 1645
    invoke-static {}, Lcom/android/settings/ApnSettings;->isForceHideProtocol()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1646
    const/4 v0, 0x0

    .line 1649
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1650
    return v0
.end method

.method public static isSupportLTE()Z
    .locals 3

    .prologue
    .line 1763
    const/4 v0, 0x1

    .line 1764
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportLTE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1765
    return v0
.end method

.method public static isSupporteHRPD()Z
    .locals 3

    .prologue
    .line 1752
    const/4 v0, 0x1

    .line 1753
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTEBoundCDMA()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1756
    const/4 v0, 0x0

    .line 1758
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupporteHRPD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 1759
    return v0
.end method

.method private protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 904
    invoke-virtual {p2, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 905
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 917
    :goto_0
    return-object v3

    .line 912
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1434
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1440
    :goto_0
    return-object v2

    .line 1436
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1437
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1438
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1440
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 17
    .parameter "force"

    .prologue
    .line 1146
    sget-object v13, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "validateAndSave!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1148
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, apn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1150
    .local v6, mcc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1158
    .local v7, mnc:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    if-nez p1, :cond_0

    .line 1159
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    .line 1160
    const/4 v13, 0x0

    .line 1322
    .end local v8           #name:Ljava/lang/String;
    :goto_0
    return v13

    .line 1163
    .restart local v8       #name:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1164
    sget-object v13, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v13, 0x0

    goto :goto_0

    .line 1171
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->canSaved()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1173
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1174
    const/4 v13, 0x0

    goto :goto_0

    .line 1177
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, authVal:Ljava/lang/String;
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_6

    .line 1181
    const-string v13, "cpa_default"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/ApnEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1182
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1183
    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1184
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_7

    const-string v13, "0"

    const-string v14, "htc.apnsettings.tester"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1186
    const-string v13, "apn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->APNContentFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1187
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserIDFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1188
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1194
    :goto_1
    if-eqz v2, :cond_5

    .line 1195
    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1197
    :cond_5
    const-string v13, "dns1"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1198
    const-string v13, "dns2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1199
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1200
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1204
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v13, "cpa_default"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/ApnEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1205
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v13, "cpa_mode"

    const-string v14, "DEFAULT"

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, currentMode:Ljava/lang/String;
    const-string v13, "NAVI"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1207
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1190
    .end local v4           #currentMode:Ljava/lang/String;
    .end local v10           #prefs:Landroid/content/SharedPreferences;
    .restart local v5       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v13, "apn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1191
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1192
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1211
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #currentMode:Ljava/lang/String;
    .restart local v10       #prefs:Landroid/content/SharedPreferences;
    :cond_8
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1215
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "name"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c118d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8           #name:Ljava/lang/String;
    :cond_9
    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v13, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v13, "mmsport"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v13, "mmsprotocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_11

    const-string v13, "0"

    const-string v14, "htc.apnsettings.tester"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1224
    const-string v13, "apn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->APNContentFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserIDFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :goto_2
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v13, "mmsc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 1238
    .local v11, type:Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 1240
    const-string v13, "type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_a
    if-eqz v2, :cond_12

    .line 1245
    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    :cond_b
    :goto_3
    const-string v13, "protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v13, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v13, "mcc"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v13, "mnc"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v13, "numeric"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget v14, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    invoke-static {v13, v14}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v9

    .line 1282
    .local v9, op:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsMVNO:Z

    if-eqz v13, :cond_c

    .line 1283
    if-eqz v9, :cond_c

    .line 1284
    const-string v13, "operator"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v13, :cond_d

    .line 1289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1290
    const-string v13, "current"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1295
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, bearerVal:Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 1297
    const-string v13, "bearer"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    :cond_e
    sget-boolean v13, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v13, :cond_f

    .line 1307
    const-string v13, "databearer"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v13, "pppnumber"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_f
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_10

    .line 1313
    const-string v13, "dns1"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v13, "dns2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1322
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1228
    .end local v3           #bearerVal:Ljava/lang/String;
    .end local v9           #op:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_11
    const-string v13, "apn"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1246
    .restart local v11       #type:Ljava/lang/String;
    :cond_12
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_b

    .line 1248
    const-string v13, "authtype"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "actionBarContainer"

    .prologue
    .line 1773
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1774
    new-instance v0, Lcom/android/settings/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnEditor$1;-><init>(Lcom/android/settings/ApnEditor;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1783
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 252
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, " oncreate!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const v2, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0e93

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 257
    const-string v2, "apn_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    .line 258
    const-string v2, "apn_apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 266
    :cond_0
    const-string v2, "apn_http_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 267
    const-string v2, "apn_http_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 270
    const-string v2, "apn_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    .line 271
    const-string v2, "apn_server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    .line 272
    const-string v2, "apn_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    .line 273
    const-string v2, "apn_mms_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 274
    const-string v2, "apn_mms_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 277
    const-string v2, "apn_mms_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 279
    const-string v2, "apn_mmsc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v4, 0x941

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 281
    const-string v2, "apn_mcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 284
    const-string v2, "apn_mnc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 287
    const-string v2, "apn_dns1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 290
    const-string v2, "apn_dns2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 294
    const-string v2, "apn_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    .line 296
    const-string v2, "auth_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    .line 297
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_1

    .line 298
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "mAuthType value reset for KDDI."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const v2, 0x7f0800d0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mApnAuthTypeEntriesId:I

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mApnAuthTypeEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800d1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 310
    const-string v2, "apn_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    .line 311
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 312
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_2

    .line 313
    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800ae

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 317
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 322
    :goto_0
    const-string v2, "apn_roaming_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    .line 334
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 336
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_3

    .line 337
    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800ae

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 341
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 346
    :goto_1
    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 348
    const-string v2, "bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    .line 349
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportBearer()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 350
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupporteHRPD()Z

    move-result v14

    .line 351
    .local v14, isSupporteHRPD:Z
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportLTE()Z

    move-result v13

    .line 352
    .local v13, isSupportLTE:Z
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1b

    const/4 v2, 0x1

    if-ne v13, v2, :cond_1b

    .line 353
    const v2, 0x7f08002d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 373
    .end local v13           #isSupportLTE:Z
    .end local v14           #isSupporteHRPD:Z
    :goto_2
    const-string v2, "data_bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    .line 374
    const-string v2, "ppp_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    .line 380
    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-nez v2, :cond_4

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    .line 384
    .local v17, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 388
    .end local v17           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 391
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 395
    sget-object v2, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentPhoneType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 417
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v4, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    invoke-static {v2, v4}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, op:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 420
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsMVNO:Z

    .line 424
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' AND (type = \'netshare\' OR type = \'DUN\') "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 437
    .local v3, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 438
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 446
    :cond_7
    :goto_3
    new-instance v1, Landroid/content/CursorLoader;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "name"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "name ASC"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .local v1, operatorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v1}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    .line 451
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_8

    .line 452
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_21

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netshare exists mNetShareExists="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    .line 454
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_8
    if-nez p1, :cond_22

    .line 458
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 459
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    .line 460
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 461
    .local v10, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_9

    .line 462
    const-string v2, "editable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    .line 472
    .end local v10           #bundle:Landroid/os/Bundle;
    :cond_9
    :goto_5
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 473
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 517
    :goto_6
    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v2, :cond_a

    .line 519
    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v4

    const/4 v4, 0x1

    const-string v6, "name"

    aput-object v6, v2, v4

    const/4 v4, 0x2

    const-string v6, "apn"

    aput-object v6, v2, v4

    const/4 v4, 0x3

    const-string v6, "proxy"

    aput-object v6, v2, v4

    const/4 v4, 0x4

    const-string v6, "port"

    aput-object v6, v2, v4

    const/4 v4, 0x5

    const-string v6, "user"

    aput-object v6, v2, v4

    const/4 v4, 0x6

    const-string v6, "server"

    aput-object v6, v2, v4

    const/4 v4, 0x7

    const-string v6, "password"

    aput-object v6, v2, v4

    const/16 v4, 0x8

    const-string v6, "mmsc"

    aput-object v6, v2, v4

    const/16 v4, 0x9

    const-string v6, "mcc"

    aput-object v6, v2, v4

    const/16 v4, 0xa

    const-string v6, "mnc"

    aput-object v6, v2, v4

    const/16 v4, 0xb

    const-string v6, "numeric"

    aput-object v6, v2, v4

    const/16 v4, 0xc

    const-string v6, "mmsproxy"

    aput-object v6, v2, v4

    const/16 v4, 0xd

    const-string v6, "mmsport"

    aput-object v6, v2, v4

    const/16 v4, 0xe

    const-string v6, "mmsprotocol"

    aput-object v6, v2, v4

    const/16 v4, 0xf

    const-string v6, "authtype"

    aput-object v6, v2, v4

    const/16 v4, 0x10

    const-string v6, "type"

    aput-object v6, v2, v4

    const/16 v4, 0x11

    const-string v6, "insert_by"

    aput-object v6, v2, v4

    const/16 v4, 0x12

    const-string v6, "protocol"

    aput-object v6, v2, v4

    const/16 v4, 0x13

    const-string v6, "carrier_enabled"

    aput-object v6, v2, v4

    const/16 v4, 0x14

    const-string v6, "bearer"

    aput-object v6, v2, v4

    const/16 v4, 0x15

    const-string v6, "roaming_protocol"

    aput-object v6, v2, v4

    const/16 v4, 0x16

    const-string v6, "databearer"

    aput-object v6, v2, v4

    const/16 v4, 0x17

    const-string v6, "pppnumber"

    aput-object v6, v2, v4

    sput-object v2, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 549
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    .line 550
    .local v15, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v15, v2, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 551
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v9

    check-cast v9, Landroid/content/CursorLoader;

    .line 553
    .local v9, apnLoader:Landroid/content/CursorLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 554
    invoke-virtual {v9}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    .line 560
    :cond_b
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-nez v2, :cond_e

    .line 561
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_d

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 564
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_e

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 569
    :cond_e
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v2, :cond_18

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_f

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 573
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_10

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 576
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_11

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 579
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_12

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 582
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_13

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 585
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_14

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 588
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_15

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 591
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_16

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 594
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_17

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 597
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_18

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 604
    :cond_18
    new-instance v2, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 606
    .end local v9           #apnLoader:Landroid/content/CursorLoader;
    .end local v15           #manager:Landroid/app/LoaderManager;
    :goto_7
    return-void

    .line 319
    .end local v1           #operatorLoader:Landroid/content/CursorLoader;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #action:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #op:Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 343
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 355
    .restart local v13       #isSupportLTE:Z
    .restart local v14       #isSupporteHRPD:Z
    :cond_1b
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1c

    if-nez v13, :cond_1c

    .line 356
    const v2, 0x7f0800af

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800b0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 360
    :cond_1c
    if-nez v14, :cond_1d

    const/4 v2, 0x1

    if-ne v13, v2, :cond_1d

    .line 361
    const v2, 0x7f0800b1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800b2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 366
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 369
    .end local v13           #isSupportLTE:Z
    .end local v14           #isSupporteHRPD:Z
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 439
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #action:Ljava/lang/String;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v16       #op:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 440
    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    .line 441
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    .line 442
    :cond_20
    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    .line 443
    const-string v2, "content://subgsmapn/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    .line 452
    .restart local v1       #operatorLoader:Landroid/content/CursorLoader;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 465
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 466
    const-string v2, "editable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v4, "mmsprotocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 469
    const-string v2, "allowsave"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mSave:Z

    goto/16 :goto_5

    .line 474
    :cond_23
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 475
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_24

    const-string v2, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    .line 476
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 477
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 493
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_29

    .line 498
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert new telephony provider into "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_7

    .line 480
    :cond_25
    sget-object v18, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 481
    .local v18, tmpUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 482
    sget-object v18, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 490
    :cond_26
    :goto_9
    const-string v2, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_8

    .line 483
    :cond_27
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 484
    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_28

    .line 485
    sget-object v18, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_9

    .line 486
    :cond_28
    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_26

    .line 487
    const-string v2, "content://subgsmapn/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    goto :goto_9

    .line 506
    .end local v18           #tmpUri:Landroid/net/Uri;
    :cond_29
    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_6

    .line 509
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0eb2

    const v2, 0x104000a

    .line 1390
    if-nez p1, :cond_0

    .line 1391
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1411
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1401
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1402
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->getInvalidApnErrorMsg(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    .restart local v0       #msg:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1411
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 659
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1041
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    if-eqz v0, :cond_1

    .line 1042
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 1044
    sget-boolean v0, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-nez v0, :cond_0

    .line 1046
    const v0, 0x7f0c0eae

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1050
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0c0eb0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1052
    const/4 v0, 0x3

    const v1, 0x7f0c0eb1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1055
    :cond_1
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 653
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 655
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1085
    packed-switch p1, :pswitch_data_0

    .line 1122
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1116
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->backKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    const/4 v0, 0x1

    goto :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ApnEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1060
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1080
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1062
    :pswitch_0
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 1066
    :pswitch_1
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Save"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    const v1, 0x7f0c04d5

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1069
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 1073
    :pswitch_2
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Canel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_0

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 639
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    .line 644
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 646
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 649
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 943
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 944
    .local v6, key:Ljava/lang/String;
    const-string v10, "auth_type"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 946
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 947
    .local v5, index:I
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 949
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f080029

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 950
    .local v9, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    .end local v5           #index:I
    .end local v9           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 951
    :catch_0
    move-exception v3

    .line 952
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    goto :goto_1

    .line 955
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v10, "apn_mms_protocol"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 957
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 958
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 959
    :catch_1
    move-exception v3

    .line 960
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "could not get/set MMS protocol setting"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 965
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v10, "apn_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, p2

    .line 966
    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    .line 967
    .local v8, protocol:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 968
    const/4 v10, 0x0

    goto :goto_1

    .line 970
    :cond_3
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 971
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 972
    .end local v8           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_4
    const-string v10, "apn_roaming_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, p2

    .line 973
    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    .line 974
    .restart local v8       #protocol:Ljava/lang/String;
    if-nez v8, :cond_5

    .line 975
    const/4 v10, 0x0

    goto :goto_1

    .line 977
    :cond_5
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 978
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 979
    .end local v8           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_6
    const-string v10, "bearer"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, p2

    .line 980
    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, bearer:Ljava/lang/String;
    if-nez v1, :cond_7

    .line 982
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 984
    :cond_7
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 985
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 990
    .end local v1           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_8
    const-string v10, "apn_apn"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, p2

    .line 991
    check-cast v0, Ljava/lang/String;

    .line 992
    .local v0, apn:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->getApnApnBlackList()[Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, blackList:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v2

    .local v7, length:I
    :goto_2
    if-ge v4, v7, :cond_0

    .line 994
    aget-object v10, v2, v4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 995
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    .line 996
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 993
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1416
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1418
    if-nez p1, :cond_0

    .line 1419
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1422
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1425
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1017
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    if-eqz v1, :cond_0

    const-string v1, "netshare"

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dun"

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->canSaved()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1021
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1022
    .local v0, save:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1023
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1025
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    .line 1033
    :goto_0
    return v3

    .line 1027
    .end local v0           #save:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1028
    .restart local v0       #save:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 1029
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1031
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 610
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 613
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    .line 614
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 616
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 622
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 623
    sget-object v1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "restore mUri onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    .line 627
    .local v0, loader:Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 628
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 630
    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    .line 633
    .end local v0           #loader:Landroid/content/CursorLoader;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 1127
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1128
    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1134
    :goto_0
    const-string v0, "mmsprotocol"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v0, "editable"

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1136
    const-string v0, "allowsave"

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1137
    return-void

    .line 1131
    :cond_0
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "needs to restore muri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1600
    invoke-virtual {p0, p2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1601
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_1

    .line 1603
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1608
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_0

    .line 1609
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->invalidateOptionsMenu()V

    .line 1613
    :cond_0
    return-void

    .line 1605
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 1822
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1826
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1827
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
