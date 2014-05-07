.class public Lcom/android/settings/ApnEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


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

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ApnEditor;->DBG:Z

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

    sput v1, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const-string v0, "ro.cid"

    sput-object v0, Lcom/android/settings/ApnEditor;->PROPERTY_CID:Ljava/lang/String;

    const-string v0, "ro.telephony.bl"

    sput-object v0, Lcom/android/settings/ApnEditor;->PROPERTY_LTE_BL:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    const v0, 0x7f08002d

    iput v0, p0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    const v0, 0x7f08002b

    iput v0, p0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    const v0, 0x7f0800d0

    iput v0, p0, Lcom/android/settings/ApnEditor;->mApnAuthTypeEntriesId:I

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsMVNO:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    return-void
.end method

.method private APNContentFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v2, "UserIDFormat "

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v0, ".au-net.ne.jp"

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "value is empty."

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "include forbit alpha."

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_0
.end method

.method private DnsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

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

    :cond_0
    const-string v2, "value format is not correct!"

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

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

    :cond_3
    const-string v2, "DNS content is not correct!"

    invoke-static {v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/ApnEditor;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private UserIDFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x2e

    const/16 v10, 0x2d

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "UserIDFormat "

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v0, ".au-net.ne.jp"

    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "value is empty."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "include forbit alpha."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_0

    :cond_3
    const-string v5, "\\@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    if-eq v5, v9, :cond_4

    const-string v5, "format is not right."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string p1, ""

    goto :goto_0

    :cond_4
    aget-object v5, v4, v7

    if-eqz v5, :cond_e

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

    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_5

    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x18

    if-le v5, v6, :cond_6

    :cond_5
    const-string v5, "length incorrect."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string p1, ""

    goto :goto_0

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

    :cond_7
    const-string v5, "end with invalid char."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string p1, ""

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_1
    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_e

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

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

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

    const/4 v1, 0x1

    const-string p1, ""

    goto/16 :goto_0

    :cond_e
    array-length v5, v4

    if-ne v5, v9, :cond_18

    aget-object v5, v4, v8

    if-eqz v5, :cond_18

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

    :cond_f
    const-string v5, "length incorrect."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string p1, ""

    goto/16 :goto_0

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

    :cond_11
    const-string v5, "domian endwith invalid char"

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string p1, ""

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_2
    aget-object v5, v4, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

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

    :cond_14
    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

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

    const-string v5, "do nothing, and continue to check the next char."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    goto :goto_3

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

    const/4 v1, 0x1

    const-string p1, ""

    goto/16 :goto_0

    :cond_17
    if-eqz v3, :cond_18

    const-string v5, "only have numbers in Domain."

    invoke-static {v5}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string p1, ""

    goto/16 :goto_0

    :cond_18
    if-eqz v1, :cond_1

    const-string p1, ""

    goto/16 :goto_0
.end method

.method private UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "UserPwdFormat "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string p1, ""

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    :cond_3
    const-string p1, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/ApnEditor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->backKeyEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApnEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    return v0
.end method

.method private backKeyEvent()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v1, :cond_4

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

    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0c04d5

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    :cond_3
    return v0

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

    :cond_6
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    goto :goto_0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private canSaved()Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private fillUi()V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_0

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

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    :cond_0
    const-string v20, "cpa_default"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v20, "name"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    sget-object v20, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "get orginal CPA data! "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "apn"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "proxy"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "port"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "user"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "password"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "authtype"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_7

    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v4, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    :goto_0
    const-string v20, "dns1"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "dns2"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v20, "server"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xe

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

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

    sget-boolean v20, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v20, :cond_2

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsCPA:Z

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

    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f080029

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    aget-object v21, v19, v5

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_5
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    sget-object v20, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "Name setEnabled false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xf

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    if-ltz v4, :cond_a

    const/16 v20, 0x2

    move/from16 v0, v20

    if-gt v4, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    :goto_6
    sget-boolean v20, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x16

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x17

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

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

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_6

    :cond_b
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_2

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_10
    sget-object v20, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "mName is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public static getApnApnBlackList()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getDeviceType()I

    move-result v5

    if-ne v5, v6, :cond_1

    move v0, v3

    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "phone"

    aput-object v5, v1, v4

    const-string v4, "wap.cingular"

    aput-object v4, v1, v3

    move-object v2, v1

    :cond_0
    return-object v2

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v5, :cond_8

    const-string v5, "0"

    const-string v6, "htc.apnsettings.tester"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

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

    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->APNContentFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c04d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    :cond_3
    sget-object v5, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v6, "password or id is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->UserIDFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b39

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b3a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b3c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0b3d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_a

    sget-boolean v5, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getInvalidApnErrorMsg(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0ae7

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "getInvalidApnErrorMsg Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLteModeBlackList()Ljava/lang/String;
    .locals 5

    sget-object v2, Lcom/android/settings/ApnEditor;->PROPERTY_CID:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/ApnEditor;->PROPERTY_LTE_BL:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :cond_1
    return-object v0
.end method

.method private static getOperatorNumeric()Ljava/lang/String;
    .locals 3

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "gsm.gsm.sim.operator.numeric"

    :cond_0
    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v0, "gsm.gsm.sim.operator.numeric"

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v0, "gsm.sub.icc.operator.numeric"

    goto :goto_0
.end method

.method public static isCapabilityEnabled(I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, -0x1

    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

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

    and-int v4, p0, v1

    if-ne p0, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "isCapabilitiesEnabled Exception"

    invoke-static {v4, v2}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isLTE()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->isSIMInLTEBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

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

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/ApnEditor;->isCapabilityEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

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

    return v2

    :catch_0
    move-exception v1

    const-string v4, "isLTEBoundCDMA Exception"

    invoke-static {v4, v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLTEBoundUMTS()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "BUILT_RAT_MAIN_FLAG_LTE_BOUND_UMTS"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/ApnEditor;->isCapabilityEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

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

    return v2

    :catch_0
    move-exception v1

    const-string v4, "isLTEBoundUMTS Exception"

    invoke-static {v4, v1}, Lcom/android/settings/ApnEditor;->Log(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSIMInLTEBlackList(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/ApnEditor;->getLteModeBlackList()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

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

    :cond_1
    return v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isSupportBearer()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lcom/android/settings/ApnSettings;->isForceHideBearer()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Lcom/android/settings/ApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->isHideCTLTE(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/ApnSettings;->isEnableDualPreferAPN()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

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

    :cond_4
    return v0
.end method

.method public static isSupportDualStackIPv4IPv6()Z
    .locals 3

    const/4 v0, 0x1

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

    return v0
.end method

.method public static isSupportIPv6()Z
    .locals 3

    const/4 v0, 0x0

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

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/ApnSettings;->isForceHideProtocol()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

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

    return v0
.end method

.method public static isSupportLTE()Z
    .locals 3

    const/4 v0, 0x1

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

    return v0
.end method

.method public static isSupporteHRPD()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTEBoundCDMA()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

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

    return v0
.end method

.method private protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    const/16 v2, 0x2a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 17

    sget-object v13, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "validateAndSave!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    if-nez p1, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->showDialog(I)V

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_0

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

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_6

    const-string v13, "cpa_default"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

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

    const-string v13, "apn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->APNContentFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserIDFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    if-eqz v2, :cond_5

    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

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

    const-string v13, "dns2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string v13, "cpa_default"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v13, "cpa_mode"

    const-string v14, "DEFAULT"

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "NAVI"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto/16 :goto_0

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

    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

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

    :cond_8
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "name"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c118d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_9
    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "mmsport"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "mmsprotocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v13, "apn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->APNContentFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserIDFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->UserPwdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v13, "mmsc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    const-string v13, "type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v2, :cond_12

    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

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

    const-string v13, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "mcc"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "mnc"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget v14, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    invoke-static {v13, v14}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsMVNO:Z

    if-eqz v13, :cond_c

    if-eqz v9, :cond_c

    const-string v13, "operator"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v13, :cond_d

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

    const-string v13, "current"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v13}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v13, "bearer"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    sget-boolean v13, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v13, :cond_f

    const-string v13, "databearer"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "pppnumber"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_10

    const-string v13, "dns1"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "dns2"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->DnsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_11
    const-string v13, "apn"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_12
    sget-boolean v13, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v13, :cond_b

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

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v0, Lcom/android/settings/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnEditor$1;-><init>(Lcom/android/settings/ApnEditor;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, " oncreate!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0e93

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v2, "apn_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v2, "apn_http_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_http_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_mms_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_mms_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_mms_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const-string v2, "apn_mmsc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v4, 0x941

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "apn_mcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_mnc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_dns1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_dns2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "auth_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "mAuthType value reset for KDDI."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0800d0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mApnAuthTypeEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mApnAuthTypeEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800d1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const-string v2, "apn_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800ae

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :goto_0
    const-string v2, "apn_roaming_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800ae

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :goto_1
    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v2, "bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportBearer()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupporteHRPD()Z

    move-result v14

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportLTE()Z

    move-result v13

    const/4 v2, 0x1

    if-ne v14, v2, :cond_1b

    const/4 v2, 0x1

    if-ne v13, v2, :cond_1b

    const v2, 0x7f08002d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :goto_2
    const-string v2, "data_bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "ppp_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

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

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget v4, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    invoke-static {v2, v4}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsMVNO:Z

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

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

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

    invoke-virtual {v1}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_21

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNetShareExists:Z

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

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    if-nez p1, :cond_22

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v2, "editable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    :cond_9
    :goto_5
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    :goto_6
    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v2, :cond_a

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

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v15, v2, v4, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v9

    check-cast v9, Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v9}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    :cond_b
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-nez v2, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_e
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mIsCPA:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_18
    new-instance v2, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    :goto_7
    return-void

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    :cond_1b
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1c

    if-nez v13, :cond_1c

    const v2, 0x7f0800af

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800b0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :cond_1c
    if-nez v14, :cond_1d

    const/4 v2, 0x1

    if-ne v13, v2, :cond_1d

    const v2, 0x7f0800b1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/ApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0800b2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    :cond_1f
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    :cond_20
    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    const-string v2, "content://subgsmapn/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_3

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    const-string v2, "editable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mEditable:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v4, "mmsprotocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    const-string v2, "allowsave"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mSave:Z

    goto/16 :goto_5

    :cond_23
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_24

    const-string v2, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_29

    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert new telephony provider into "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    :cond_25
    sget-object v18, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v18, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

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

    :cond_27
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_26

    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_28

    sget-object v18, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_9

    :cond_28
    sget v2, Lcom/android/settings/ApnEditor;->mCurrentPhoneType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_26

    const-string v2, "content://subgsmapn/carriers"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    goto :goto_9

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

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_6

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0c0eb2

    const v2, 0x104000a

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

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

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->getInvalidApnErrorMsg(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

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

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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

    const/4 v4, 0x0

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-nez v0, :cond_0

    const v0, 0x7f0c0eae

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0c0eb0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0c0eb1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    return v3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->backKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ApnEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

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

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

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

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c04d5

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

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

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

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

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v10, "auth_type"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f080029

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    :catch_0
    move-exception v3

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const-string v10, "apn_mms_protocol"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :try_start_1
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v10, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "could not get/set MMS protocol setting"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string v10, "apn_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v10, "apn_roaming_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string v10, "bearer"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string v10, "apn_apn"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/ApnEditor;->getApnApnBlackList()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    array-length v7, v2

    :goto_2
    if-ge v4, v7, :cond_0

    aget-object v10, v2, v4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/app/Activity;->showDialog(I)V

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

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

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    :goto_0
    return v3

    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "restore mUri onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ApnEditor;->mInsertUri:Landroid/net/Uri;

    iput-boolean v4, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string v0, "mmsprotocol"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "editable"

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "allowsave"

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "needs to restore muri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mRestoreRequired:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_1

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void

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

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsInForeground:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
