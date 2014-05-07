.class public Lcom/android/settings/CdmaApnEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CdmaApnEditor.java"

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

.field private static final AUTH_TYPE_INDEX:I = 0xf

.field private static final BEARER_INDEX:I = 0x14

.field private static final CARRIER_ENABLED_INDEX:I = 0x13

.field private static final DATA_BEARER_INDEX:I = 0x16

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEFAULT_MMSPROTOCOL_VALUEINDEX:I = 0x0

.field private static final EDITABLE:Ljava/lang/String; = "editable"

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final ERROR_DIALOG_INVALID_APN:I = 0x1

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x11

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_MMSPROTOCOL_PREF:Ljava/lang/String; = "apn_mms_protocol"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

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

.field private static final PROTOCOL_INDEX:I = 0x12

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x15

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_INDEX:I = 0x10

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Lcom/htc/preference/HtcEditTextPreference;

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

.field private mIs4G:Z

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
    .locals 3

    const-class v0, Lcom/android/settings/CdmaApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/CdmaApnEditor;->DBG:Z

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mmsprotocol"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "insert_by"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/CdmaApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    const v0, 0x7f08002d

    iput v0, p0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    const v0, 0x7f08002b

    iput v0, p0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIs4G:Z

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    return-void
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/CdmaApnEditor;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CdmaApnEditor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->backKeyEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/CdmaApnEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/CdmaApnEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    return v0
.end method

.method private backKeyEvent()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->canSaved()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

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
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

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

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

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

    sget-object v0, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

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
    sget-object p1, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private fillUi()V
    .locals 12

    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v9, "internal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "external"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "ctnet"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0a0b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v5}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v6}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_2
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    :goto_2
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x15

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x13

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x14

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mIs4G:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    sget-object v10, Lcom/android/settings/CdmaApnGroupSettings;->BEARER_LTE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    sget-boolean v9, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x16

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x17

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_4
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080029

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v9, "internal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "external"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    const v10, 0x7f0c0a23

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_6
    :goto_5
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    const-string v9, "ctwap"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0a0c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    sget-object v10, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gsm.cdma.uim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

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
    sget-object v2, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

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
    .locals 14

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0, v9}, Landroid/app/Activity;->showDialog(I)V

    :goto_0
    return v9

    :cond_0
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v10, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v11, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->canSaved()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_5

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c118d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "apn"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "proxy"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "port"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mmsproxy"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mmsport"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mmsprotocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "user"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "server"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "password"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mmsc"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v9, "type"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const-string v9, "protocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "roaming_protocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mcc"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mnc"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "numeric"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x2

    invoke-static {v9, v11}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    const-string v9, "operator"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "current"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v9, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    sget-boolean v9, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v9, :cond_b

    const-string v9, "databearer"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "pppnumber"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v11, v8, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v9, v10

    goto/16 :goto_0
.end method


# virtual methods
.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v0, Lcom/android/settings/CdmaApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnEditor$1;-><init>(Lcom/android/settings/CdmaApnEditor;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0e93

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    const-string v2, "apn_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v2, "apn_http_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_http_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_mms_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_mms_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_mms_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const-string v2, "apn_mmsc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x941

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    const-string v2, "apn_mcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_mnc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const-string v2, "apn_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "auth_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    const-string v2, "apn_dns1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_dns2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "apn_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :goto_0
    const-string v2, "apn_roaming_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :goto_1
    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v2, "bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportBearer()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupporteHRPD()Z

    move-result v14

    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportLTE()Z

    move-result v13

    const/4 v2, 0x1

    if-ne v14, v2, :cond_d

    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    const v2, 0x7f08002d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :goto_2
    const-string v2, "data_bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    const-string v2, "ppp_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND (type = \'netshare\' OR type = \'DUN\') "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Landroid/content/CursorLoader;

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

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

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netshare exists mNetShareExists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/CdmaApnEditor;->Log(Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    if-nez p1, :cond_12

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v2, "editable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    const-string v2, "is4G"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mIs4G:Z

    :cond_8
    :goto_4
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    :goto_5
    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "proxy"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "port"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "server"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "password"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "mmsc"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "mcc"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "mnc"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "numeric"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "mmsproxy"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "mmsport"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "mmsprotocol"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "authtype"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "type"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "insert_by"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "protocol"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "carrier_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "bearer"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "roaming_protocol"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "databearer"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "pppnumber"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/settings/CdmaApnEditor;->sProjection:[Ljava/lang/String;

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v15, v2, v3, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v9

    check-cast v9, Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v9}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->fillUi()V

    :cond_a
    new-instance v2, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    :goto_6
    return-void

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x1

    if-ne v14, v2, :cond_e

    if-nez v13, :cond_e

    const v2, 0x7f0800af

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :cond_e
    if-nez v14, :cond_f

    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    const v2, 0x7f0800b1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    const-string v2, "editable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v3, "mmsprotocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    const-string v2, "allowsave"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    goto/16 :goto_4

    :cond_13
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    if-nez v2, :cond_14

    const-string v2, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_16

    sget-object v2, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6

    :cond_15
    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_7

    :cond_16
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_5

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0c0eb2

    const v2, 0x104000a

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

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

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->sProjection:[Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

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
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->backKeyEvent()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CdmaApnEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->deleteApn()V

    goto :goto_0

    :pswitch_1
    const-string v1, "ANALYTIC_Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

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

    invoke-direct {p0, v4}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

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

    sget-object v3, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

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

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

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

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

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

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f080029

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

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
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v10, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

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

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v10, "apn_roaming_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string v10, "bearer"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

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

    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

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

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    if-eqz v1, :cond_0

    const-string v1, "netshare"

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dun"

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->canSaved()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    :goto_0
    return v3

    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v1, "restore mUri onResume()"

    invoke-static {v1}, Lcom/android/settings/CdmaApnEditor;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    iput-boolean v4, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string v0, "mmsprotocol"

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "editable"

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "allowsave"

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "needs to restore muri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_1

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CdmaApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void

    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

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
