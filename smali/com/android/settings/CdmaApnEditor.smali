.class public Lcom/android/settings/CdmaApnEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CdmaApnEditor.java"

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

    .prologue
    .line 78
    const-class v0, Lcom/android/settings/CdmaApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/CdmaApnEditor;->DBG:Z

    .line 160
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

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 136
    const v0, 0x7f08002d

    iput v0, p0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 137
    const v0, 0x7f08002b

    iput v0, p0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIs4G:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 1284
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    return-void
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1111
    sget-boolean v0, Lcom/android/settings/CdmaApnEditor;->DBG:Z

    if-eqz v0, :cond_0

    .line 1112
    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 1117
    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CdmaApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->backKeyEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/CdmaApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/CdmaApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    return v0
.end method

.method private backKeyEvent()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, result:Z
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

    .line 1265
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    .line 1268
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    if-eqz v1, :cond_3

    .line 1269
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-eqz v1, :cond_3

    .line 1270
    invoke-direct {p0, v3}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1271
    const v1, 0x7f0c04d5

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1272
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    .line 1273
    const/4 v0, 0x1

    .line 1277
    :cond_3
    return v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 783
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 784
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 796
    :goto_0
    return-object v3

    .line 791
    :cond_0
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private canSaved()Z
    .locals 2

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 868
    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const/4 v1, 0x0

    .line 872
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
    .line 1207
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    :cond_0
    const-string p1, ""

    .line 1210
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1200
    :cond_0
    sget-object p1, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    .line 1202
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1182
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1183
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    .line 1184
    return-void
.end method

.method private fillUi()V
    .locals 12

    .prologue
    .line 568
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_4

    .line 569
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    .line 571
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 572
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 576
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, insertBy:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v9, "internal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "external"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 578
    :cond_0
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, apn:Ljava/lang/String;
    const-string v9, "ctnet"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 580
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0a0b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 588
    .end local v0           #apn:Ljava/lang/String;
    .end local v3           #insertBy:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 589
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 590
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 591
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 592
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 593
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 595
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, mmsprotocol:Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 597
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v5}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 601
    :goto_1
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 602
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 603
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 604
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 605
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 606
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    .line 607
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, numeric:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_2

    .line 617
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, mcc:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, mnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 622
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v6}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 623
    iput-object v6, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    .line 624
    iput-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    .line 627
    .end local v4           #mcc:Ljava/lang/String;
    .end local v6           #mnc:Ljava/lang/String;
    .end local v7           #numeric:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 628
    .local v1, authVal:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_b

    .line 629
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 637
    :goto_2
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 638
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x15

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 639
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

    .line 640
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x14

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 644
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mIs4G:Z

    if-eqz v9, :cond_3

    .line 645
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    sget-object v10, Lcom/android/settings/CdmaApnGroupSettings;->BEARER_LTE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 653
    :cond_3
    sget-boolean v9, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v9, :cond_4

    .line 655
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x16

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 656
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x17

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 660
    .end local v1           #authVal:I
    .end local v5           #mmsprotocol:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 677
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 678
    .local v2, authValIndex:I
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 680
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080029

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 681
    .local v8, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 687
    .end local v2           #authValIndex:I
    .end local v8           #values:[Ljava/lang/String;
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

    .line 689
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

    .line 691
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 696
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 697
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 698
    .restart local v3       #insertBy:Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v9, "internal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "external"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 699
    :cond_5
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    const v10, 0x7f0c0a23

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(I)V

    .line 705
    .end local v3           #insertBy:Ljava/lang/String;
    :cond_6
    :goto_5
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 717
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-nez v9, :cond_7

    .line 718
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 719
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 720
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 721
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 722
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 723
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 724
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 725
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 726
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 727
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 728
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 729
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 730
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 731
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 732
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 733
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 734
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 737
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 738
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 739
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 740
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 745
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 746
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 747
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 748
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 749
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 750
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 751
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setEnabled(Z)V

    .line 755
    :cond_8
    return-void

    .line 581
    .end local v1           #authVal:Ljava/lang/String;
    .restart local v0       #apn:Ljava/lang/String;
    .restart local v3       #insertBy:Ljava/lang/String;
    :cond_9
    const-string v9, "ctwap"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 582
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0a0c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    .end local v0           #apn:Ljava/lang/String;
    .end local v3           #insertBy:Ljava/lang/String;
    .restart local v5       #mmsprotocol:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto/16 :goto_1

    .line 634
    .local v1, authVal:I
    :cond_b
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 639
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 683
    .end local v5           #mmsprotocol:Ljava/lang/String;
    .local v1, authVal:Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    sget-object v10, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 702
    :cond_e
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1121
    const/4 v1, 0x0

    .line 1123
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1124
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1126
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1128
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 1129
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1138
    :cond_0
    :goto_0
    return-object v1

    .line 1130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 1131
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1132
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 1133
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1134
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1135
    iget-object v5, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0eb6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1235
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    const-string v0, "gsm.cdma.uim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
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
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 764
    invoke-virtual {p2, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 765
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 777
    :goto_0
    return-object v3

    .line 772
    :cond_0
    iget-object v4, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1188
    :cond_0
    sget-object v2, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    .line 1194
    :goto_0
    return-object v2

    .line 1190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1191
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1192
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1194
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 993
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, apn:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, mcc:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_0

    .line 999
    invoke-virtual {p0, v9}, Lcom/android/settings/CdmaApnEditor;->showDialog(I)V

    .line 1107
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return v9

    .line 1003
    .restart local v5       #name:Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1004
    sget-object v10, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1011
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

    .line 1013
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1021
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c118d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v9, "apn"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v9, "proxy"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v9, "port"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v9, "mmsproxy"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v9, "mmsport"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v9, "mmsprotocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v9, "user"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v9, "server"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v9, "password"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v9, "mmsc"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, type:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 1039
    const-string v9, "type"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_6
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 1044
    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    :cond_7
    const-string v9, "protocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v9, "roaming_protocol"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v9, "mcc"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v9, "mnc"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
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

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x2

    invoke-static {v9, v11}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    .line 1076
    .local v6, op:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    if-eqz v9, :cond_8

    .line 1077
    if-eqz v6, :cond_8

    .line 1078
    const-string v9, "operator"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_8
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 1083
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1084
    const-string v9, "current"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    :cond_9
    iget-object v9, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1090
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 1091
    const-string v9, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    :cond_a
    sget-boolean v9, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v9, :cond_b

    .line 1101
    const-string v9, "databearer"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v9, "pppnumber"

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CdmaApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v11, v8, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v9, v10

    .line 1107
    goto/16 :goto_0
.end method


# virtual methods
.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "actionBarContainer"

    .prologue
    .line 1248
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1249
    new-instance v0, Lcom/android/settings/CdmaApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnEditor$1;-><init>(Lcom/android/settings/CdmaApnEditor;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "icicle"

    .prologue
    .line 219
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const v2, 0x7f060004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->addPreferencesFromResource(I)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0e93

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/CdmaApnEditor;->sNotSet:Ljava/lang/String;

    .line 224
    const-string v2, "apn_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mName:Lcom/htc/preference/HtcEditTextPreference;

    .line 225
    const-string v2, "apn_apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApn:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 233
    :cond_0
    const-string v2, "apn_http_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 234
    const-string v2, "apn_http_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 237
    const-string v2, "apn_user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUser:Lcom/htc/preference/HtcEditTextPreference;

    .line 238
    const-string v2, "apn_server"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mServer:Lcom/htc/preference/HtcEditTextPreference;

    .line 239
    const-string v2, "apn_password"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    .line 240
    const-string v2, "apn_mms_proxy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProxy:Lcom/htc/preference/HtcEditTextPreference;

    .line 241
    const-string v2, "apn_mms_port"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsPort:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 244
    const-string v2, "apn_mms_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 246
    const-string v2, "apn_mmsc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x941

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 248
    const-string v2, "apn_mcc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMcc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 251
    const-string v2, "apn_mnc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMnc:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/htc/wrap/android/text/method/HtcWrapDigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 254
    const-string v2, "apn_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    .line 256
    const-string v2, "auth_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 260
    const-string v2, "apn_dns1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    .line 261
    const-string v2, "apn_dns2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    .line 269
    const-string v2, "apn_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    .line 270
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 271
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 281
    :goto_0
    const-string v2, "apn_roaming_protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    .line 293
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 295
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportDualStackIPv4IPv6()Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    const v2, 0x7f0800ad

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mApnProtocolEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 300
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 305
    :goto_1
    const-string v2, "carrier_enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCarrierEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 307
    const-string v2, "bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    .line 308
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportBearer()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 309
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupporteHRPD()Z

    move-result v14

    .line 310
    .local v14, isSupporteHRPD:Z
    invoke-static {}, Lcom/android/settings/ApnEditor;->isSupportLTE()Z

    move-result v13

    .line 311
    .local v13, isSupportLTE:Z
    const/4 v2, 0x1

    if-ne v14, v2, :cond_d

    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    .line 312
    const v2, 0x7f08002d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 332
    .end local v13           #isSupportLTE:Z
    .end local v14           #isSupporteHRPD:Z
    :goto_2
    const-string v2, "data_bearer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    .line 333
    const-string v2, "ppp_number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    .line 339
    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-nez v2, :cond_3

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    .line 343
    .local v17, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDataBearer:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mPPPNumber:Lcom/htc/preference/HtcEditTextPreference;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 348
    .end local v17           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_4

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mDns1:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 351
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    if-eqz v2, :cond_5

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mDns2:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 356
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 359
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v16

    .line 380
    .local v16, op:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 381
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mIsMVNO:Z

    .line 385
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

    .line 396
    .local v5, where:Ljava/lang/String;
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

    .line 398
    .local v1, operatorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v1}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    .line 400
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 401
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mNetShareExists:Z

    .line 402
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

    .line 403
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_7
    if-nez p1, :cond_12

    .line 407
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    .line 408
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    .line 409
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 410
    .local v10, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_8

    .line 411
    const-string v2, "editable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    .line 413
    const-string v2, "is4G"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mIs4G:Z

    .line 424
    .end local v10           #bundle:Landroid/os/Bundle;
    :cond_8
    :goto_4
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 425
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    .line 458
    :goto_5
    sget-boolean v2, Lcom/android/settings/ApnEditor;->FLAG_PPP_NUMBER_DATA_BEARER:Z

    if-eqz v2, :cond_9

    .line 460
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

    .line 490
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    .line 491
    .local v15, manager:Landroid/app/LoaderManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v15, v2, v3, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 492
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v9

    check-cast v9, Landroid/content/CursorLoader;

    .line 494
    .local v9, apnLoader:Landroid/content/CursorLoader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 495
    invoke-virtual {v9}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->fillUi()V

    .line 502
    :cond_a
    new-instance v2, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 504
    .end local v9           #apnLoader:Landroid/content/CursorLoader;
    .end local v15           #manager:Landroid/app/LoaderManager;
    :goto_6
    return-void

    .line 278
    .end local v1           #operatorLoader:Landroid/content/CursorLoader;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #action:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #op:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 302
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 314
    .restart local v13       #isSupportLTE:Z
    .restart local v14       #isSupporteHRPD:Z
    :cond_d
    const/4 v2, 0x1

    if-ne v14, v2, :cond_e

    if-nez v13, :cond_e

    .line 315
    const v2, 0x7f0800af

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 319
    :cond_e
    if-nez v14, :cond_f

    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    .line 320
    const v2, 0x7f0800b1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/CdmaApnEditor;->mBearerEntriesId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 325
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 328
    .end local v13           #isSupportLTE:Z
    .end local v14           #isSupporteHRPD:Z
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 401
    .restart local v1       #operatorLoader:Landroid/content/CursorLoader;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v8       #action:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v16       #op:Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 417
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    .line 418
    const-string v2, "editable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    const-string v3, "mmsprotocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 421
    const-string v2, "allowsave"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    goto/16 :goto_4

    .line 426
    :cond_13
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 427
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mFirstTime:Z

    if-nez v2, :cond_14

    const-string v2, "pos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    .line 428
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    .line 429
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 434
    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_16

    .line 439
    sget-object v2, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto/16 :goto_6

    .line 431
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

    .line 447
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

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/CdmaApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_5

    .line 450
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto/16 :goto_6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0eb2

    const v2, 0x104000a

    .line 1144
    if-nez p1, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1147
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

    .line 1165
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1155
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->getInvalidApnErrorMsg(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 1157
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

    .line 1165
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

    .line 556
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
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 901
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    if-eqz v0, :cond_1

    .line 902
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 903
    const v0, 0x7f0c0eae

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 906
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0c0eb0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 908
    const/4 v0, 0x3

    const v1, 0x7f0c0eb1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 911
    :cond_1
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 550
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 552
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 941
    packed-switch p1, :pswitch_data_0

    .line 969
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 963
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->backKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    const/4 v0, 0x1

    goto :goto_0

    .line 941
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
    .line 561
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CdmaApnEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 565
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

    .line 916
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 936
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 918
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

    .line 919
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->deleteApn()V

    goto :goto_0

    .line 922
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

    .line 923
    invoke-direct {p0, v4}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    const v1, 0x7f0c04d5

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 925
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto :goto_0

    .line 929
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

    .line 930
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->finish()V

    goto/16 :goto_0

    .line 916
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
    .line 534
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 536
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    .line 541
    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 543
    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 546
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 803
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, key:Ljava/lang/String;
    const-string v10, "auth_type"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 806
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 807
    .local v5, index:I
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v5}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 809
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f080029

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 810
    .local v9, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mAuthType:Lcom/htc/preference/HtcListPreference;

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v5           #index:I
    .end local v9           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 811
    :catch_0
    move-exception v3

    .line 812
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    goto :goto_1

    .line 815
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v10, "apn_mms_protocol"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 817
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 818
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 819
    :catch_1
    move-exception v3

    .line 820
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "could not get/set MMS protocol setting"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 825
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v10, "apn_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, p2

    .line 826
    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    .line 827
    .local v8, protocol:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 828
    const/4 v10, 0x0

    goto :goto_1

    .line 830
    :cond_3
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 831
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 832
    .end local v8           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_4
    const-string v10, "apn_roaming_protocol"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, p2

    .line 833
    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/CdmaApnEditor;->protocolDescription(Ljava/lang/String;Lcom/htc/preference/HtcListPreference;)Ljava/lang/String;

    move-result-object v8

    .line 834
    .restart local v8       #protocol:Ljava/lang/String;
    if-nez v8, :cond_5

    .line 835
    const/4 v10, 0x0

    goto :goto_1

    .line 837
    :cond_5
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 838
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mRoamingProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 839
    .end local v8           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_6
    const-string v10, "bearer"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, p2

    .line 840
    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/CdmaApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, bearer:Ljava/lang/String;
    if-nez v1, :cond_7

    .line 842
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 844
    :cond_7
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v10, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 845
    iget-object v10, p0, Lcom/android/settings/CdmaApnEditor;->mBearer:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 850
    .end local v1           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_8
    const-string v10, "apn_apn"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, p2

    .line 851
    check-cast v0, Ljava/lang/String;

    .line 852
    .local v0, apn:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->getApnApnBlackList()[Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, blackList:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v2

    .local v7, length:I
    :goto_2
    if-ge v4, v7, :cond_0

    .line 854
    aget-object v10, v2, v4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 855
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/CdmaApnEditor;->showDialog(I)V

    .line 856
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 853
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1170
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1172
    if-nez p1, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/android/settings/CdmaApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1176
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1179
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

    .line 877
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

    .line 881
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 882
    .local v0, save:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 883
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 885
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    .line 893
    :goto_0
    return v3

    .line 887
    .end local v0           #save:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 888
    .restart local v0       #save:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 889
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 891
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 508
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    .line 512
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 514
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 520
    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 521
    const-string v1, "restore mUri onResume()"

    invoke-static {v1}, Lcom/android/settings/CdmaApnEditor;->Log(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    .line 525
    .local v0, loader:Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 526
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    .line 527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mInsertUri:Landroid/net/Uri;

    .line 528
    iput-boolean v4, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    .line 530
    .end local v0           #loader:Landroid/content/CursorLoader;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 974
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 975
    invoke-direct {p0, v2}, Lcom/android/settings/CdmaApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 981
    :goto_0
    const-string v0, "mmsprotocol"

    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mMmsProtocol:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v0, "editable"

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mEditable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 983
    const-string v0, "allowsave"

    iget-boolean v1, p0, Lcom/android/settings/CdmaApnEditor;->mSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 984
    return-void

    .line 978
    :cond_0
    sget-object v0, Lcom/android/settings/CdmaApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "needs to restore muri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iput-boolean v2, p0, Lcom/android/settings/CdmaApnEditor;->mRestoreRequired:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1215
    invoke-virtual {p0, p2}, Lcom/android/settings/CdmaApnEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1216
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_1

    .line 1218
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CdmaApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1223
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CdmaApnEditor;->mApnType:Lcom/htc/preference/HtcEditTextPreference;

    if-ne v0, v1, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->invalidateOptionsMenu()V

    .line 1228
    :cond_0
    return-void

    .line 1220
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

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnEditor;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnEditor;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
