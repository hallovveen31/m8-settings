.class public Lcom/android/settings/ApnSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$4;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final ACC_FLAG_DISABLE_HTC_MVNO:Ljava/lang/String; = "apn_disable_htc_mvno"

.field public static final ACC_FLAG_DISPLAY_PPP_NUMBER_DATA_BEARER:Ljava/lang/String; = "apn_display_ppp_number_data_bearer"

.field public static final ACC_FLAG_FORCE_HIDE_BEARER:Ljava/lang/String; = "apn_force_hide_bearer"

.field public static final ACC_FLAG_FORCE_HIDE_PROTOCOL:Ljava/lang/String; = "apn_force_hide_protocol"

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field public static final APN_MODE_CPA:Ljava/lang/String; = "NAVI"

.field public static final APN_MODE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final CDMA_MVNO_OPERATOR:Ljava/lang/String; = "cdma_mvno_operator"

.field private static final COLUMN_APNLOCKSTATE_ID:Ljava/lang/String; = "apn_lock_state"

.field private static final CPA_DEFAULT_VALUE:Ljava/lang/String; = "cpa_default"

.field private static DBG:Z = false

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GSM:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_SUB:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

#the value of this static final field might be set in the static constructor
.field public static final FLAG_KDDI_APN_FEATURE:Z = false

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x4

.field private static final LOCK_APN_URI:Landroid/net/Uri; = null

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field public static NUMERIC_SPCS_3G:Ljava/lang/String; = null

.field public static NUMERIC_SPCS_4G:Ljava/lang/String; = null

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GSM:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_SUB:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GSM:Ljava/lang/String; = "content://gsmapn/carriers/preferapn"

.field public static final PREFERRED_APN_URI_SUB:Ljava/lang/String; = "content://subgsmapn/carriers/preferapn"

.field public static final PROPERTY_APN_UI_HIDE_ADD:Ljava/lang/String; = "ro.apn.ui.hide_add"

.field public static final READONLY:Ljava/lang/String; = "readonly"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field public static final RESTORE_CARRIERS_URI_GSM:Ljava/lang/String; = "content://gsmapn/carriers/restore"

.field public static final RESTORE_CARRIERS_URI_SUB:Ljava/lang/String; = "content://subgsmapn/carriers/restore"

.field private static final STATE:I = 0x5

.field public static final SUB_MVNO_OPERATOR:Ljava/lang/String; = "sub_mvno_operator"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static final USERNAME_INDEX:I = 0x6

.field public static isDeviceDWG:Z

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field enterOperatorPicker:Z

.field private mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

.field private mCurrentPhoneType:I

.field private mDefaultAPNUri:Landroid/net/Uri;

.field private mHasRegistered:Z

.field private mIsCPA:Z

.field private mIsInForeground:Z

.field private mIsMVNO:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPrefereUri:Landroid/net/Uri;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    .line 119
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 120
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 122
    const-string v0, "content://gsmapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_GSM:Landroid/net/Uri;

    .line 123
    const-string v0, "content://gsmapn/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_GSM:Landroid/net/Uri;

    .line 124
    const-string v0, "content://subgsmapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_SUB:Landroid/net/Uri;

    .line 125
    const-string v0, "content://subgsmapn/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_SUB:Landroid/net/Uri;

    .line 160
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    .line 1264
    const-string v0, "content://telephony/carriers/lockapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->LOCK_APN_URI:Landroid/net/Uri;

    .line 1282
    const-string v0, "316010"

    sput-object v0, Lcom/android/settings/ApnSettings;->NUMERIC_SPCS_3G:Ljava/lang/String;

    .line 1283
    const-string v0, "310120"

    sput-object v0, Lcom/android/settings/ApnSettings;->NUMERIC_SPCS_4G:Ljava/lang/String;

    .line 1309
    invoke-static {}, Lcom/android/settings/ApnSettings;->isDeviceDWG()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/ApnSettings;->isDeviceDWG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 142
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    .line 155
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    .line 156
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDefaultAPNUri:Landroid/net/Uri;

    .line 157
    sget-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    .line 165
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    .line 181
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    .line 1249
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mIsInForeground:Z

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1219
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 1220
    const-string v0, "ApnSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ApnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ApnSettings;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDefaultAPNUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/ApnSettings;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 863
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    sget-object v1, Lcom/android/settings/ApnPreference;->PHONE_TYPE_KEY:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    const-string v1, "editable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 869
    return-void
.end method

.method private fillList()V
    .locals 31

    .prologue
    .line 494
    invoke-static/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->isApnLocked(Landroid/content/Context;)Z

    move-result v17

    .line 496
    .local v17, isApnLocked:Z
    const/4 v5, 0x0

    .line 497
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 498
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    if-nez v2, :cond_1

    .line 500
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND name <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 526
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "whereArgs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 571
    const/4 v12, 0x0

    .line 573
    .local v12, cursor:Landroid/database/Cursor;
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_3

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v30, "_id"

    aput-object v30, v4, v7

    const/4 v7, 0x1

    const-string v30, "name"

    aput-object v30, v4, v7

    const/4 v7, 0x2

    const-string v30, "apn"

    aput-object v30, v4, v7

    const/4 v7, 0x3

    const-string v30, "type"

    aput-object v30, v4, v7

    const/4 v7, 0x4

    const-string v30, "insert_by"

    aput-object v30, v4, v7

    const/4 v7, 0x5

    const-string v30, "state"

    aput-object v30, v4, v7

    const/4 v7, 0x6

    const-string v30, "user"

    aput-object v30, v4, v7

    const/4 v7, 0x7

    const-string v30, "password"

    aput-object v30, v4, v7

    const/16 v7, 0x8

    const-string v30, "bearer"

    aput-object v30, v4, v7

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 585
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillList cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 586
    if-nez v12, :cond_4

    .line 776
    :goto_3
    return-void

    .line 514
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 544
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v21

    .line 547
    .local v21, op:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_2

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    :goto_4
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v21, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 552
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 579
    .end local v21           #op:Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v30, "_id"

    aput-object v30, v4, v7

    const/4 v7, 0x1

    const-string v30, "name"

    aput-object v30, v4, v7

    const/4 v7, 0x2

    const-string v30, "apn"

    aput-object v30, v4, v7

    const/4 v7, 0x3

    const-string v30, "type"

    aput-object v30, v4, v7

    const/4 v7, 0x4

    const-string v30, "insert_by"

    aput-object v30, v4, v7

    const/4 v7, 0x5

    const-string v30, "state"

    aput-object v30, v4, v7

    const/4 v7, 0x6

    const-string v30, "bearer"

    aput-object v30, v4, v7

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_2

    .line 592
    :cond_4
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceGroup;

    .line 593
    .local v10, apnList:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v10}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 595
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v19, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 598
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 599
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 600
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 601
    .local v20, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 602
    .local v9, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 603
    .local v18, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 604
    .local v28, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 605
    .local v15, insertBy:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 607
    .local v27, state:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    .line 608
    const-string v2, "CPA"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 609
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    .line 611
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsCPA - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 613
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    if-eqz v2, :cond_6

    .line 614
    const-string v2, "ApnSettings"

    const-string v3, "restoreDefaultApn! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v2, "cpa_default"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/ApnSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 616
    .local v25, prefs:Landroid/content/SharedPreferences;
    const-string v2, "cpa_mode"

    const-string v3, "DEFAULT"

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 617
    .local v8, Mode:Ljava/lang/String;
    const-string v2, "NAVI"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 618
    const-string v2, "apn"

    const-string v3, ""

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 623
    .end local v8           #Mode:Ljava/lang/String;
    .end local v25           #prefs:Landroid/content/SharedPreferences;
    :cond_6
    new-instance v23, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 625
    .local v23, pref:Lcom/android/settings/ApnPreference;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setCurrentPhoneType(I)V

    .line 631
    :cond_7
    const-string v2, "bearer"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 632
    .local v11, bearer:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/CdmaApnGroupSettings;->BEARER_NONE:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/16 v16, 0x1

    .line 633
    .local v16, is4G:Z
    :goto_6
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->set4G(Z)V

    .line 636
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 639
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    if-nez v2, :cond_11

    .line 640
    const-string v2, "ApnSettings"

    const-string v3, "hide the summary!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 646
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 648
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    if-nez v2, :cond_13

    .line 649
    const-string v2, "0"

    const-string v3, "htc.apnsettings.tester"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 650
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setClickable(Z)V

    .line 658
    :goto_8
    const/4 v13, 0x1

    .line 668
    .local v13, editable:Z
    if-eqz v28, :cond_9

    const-string v2, "netshare"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "dun"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v15, :cond_9

    const-string v2, "interanl"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 671
    const/4 v13, 0x0

    .line 685
    :cond_9
    if-eqz v27, :cond_a

    const-string v2, "readonly"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 687
    const/4 v13, 0x0

    .line 702
    :cond_a
    if-eqz v17, :cond_b

    const/4 v13, 0x0

    .line 703
    :cond_b
    if-nez v17, :cond_14

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setAllowChangePreferredApn(Z)V

    .line 706
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 708
    const/16 v26, 0x1

    .line 711
    .local v26, selectable:Z
    sget-boolean v2, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->mIsCPA:Z

    if-eqz v2, :cond_15

    .line 712
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is it tester request? :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "htc.apnsettings.tester"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v2, "0"

    const-string v3, "htc.apnsettings.tester"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 714
    const-string v2, "ApnSettings"

    const-string v3, "username/pwd check."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 716
    .local v29, username:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 717
    .local v22, password:Ljava/lang/String;
    if-eqz v29, :cond_c

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 719
    :cond_c
    const/16 v26, 0x0

    .line 728
    .end local v22           #password:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    :cond_d
    :goto_a
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 729
    if-eqz v26, :cond_1a

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 732
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 738
    :cond_e
    :goto_b
    if-eqz v27, :cond_19

    .line 740
    const-string v2, "hidden"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 742
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 767
    :cond_f
    :goto_c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_5

    .line 632
    .end local v13           #editable:Z
    .end local v16           #is4G:Z
    .end local v26           #selectable:Z
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 643
    .restart local v16       #is4G:Z
    :cond_11
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 652
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setClickable(Z)V

    goto/16 :goto_8

    .line 655
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setClickable(Z)V

    goto/16 :goto_8

    .line 703
    .restart local v13       #editable:Z
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 725
    .restart local v26       #selectable:Z
    :cond_15
    if-eqz v28, :cond_16

    const-string v2, "*"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "default"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const/16 v26, 0x1

    :goto_d
    goto :goto_a

    :cond_17
    const/16 v26, 0x0

    goto :goto_d

    .line 735
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    goto :goto_b

    .line 747
    :cond_19
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_c

    .line 755
    :cond_1a
    if-eqz v27, :cond_1b

    .line 757
    const-string v2, "hidden"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 759
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 764
    :cond_1b
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 769
    .end local v9           #apn:Ljava/lang/String;
    .end local v11           #bearer:Ljava/lang/String;
    .end local v13           #editable:Z
    .end local v15           #insertBy:Ljava/lang/String;
    .end local v16           #is4G:Z
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v23           #pref:Lcom/android/settings/ApnPreference;
    .end local v26           #selectable:Z
    .end local v27           #state:Ljava/lang/String;
    .end local v28           #type:Ljava/lang/String;
    :cond_1c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 771
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/preference/HtcPreference;

    .line 772
    .local v24, preference:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_e

    .line 775
    .end local v24           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1d
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    goto/16 :goto_3
.end method

.method public static getLTELockStatus()Z
    .locals 6

    .prologue
    .line 1474
    const/4 v2, 0x1

    .line 1476
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v3

    const-string v4, "getLTELockStatus"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1477
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1482
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    sget-boolean v3, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELockStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    return v2

    .line 1478
    :catch_0
    move-exception v1

    .line 1479
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1480
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 201
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 203
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 205
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private static getMvnoDbName(II)Ljava/lang/String;
    .locals 3
    .parameter "currentPhoneType"
    .parameter "slot"

    .prologue
    const/4 v2, 0x2

    .line 1364
    const-string v0, ""

    .line 1365
    .local v0, dbName:Ljava/lang/String;
    if-ne p0, v2, :cond_1

    .line 1366
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    const-string v0, "cdma_mvno_operator"

    .line 1386
    :goto_0
    return-object v0

    .line 1369
    :cond_0
    const-string v0, "mvno_operator"

    goto :goto_0

    .line 1371
    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    .line 1372
    const-string v0, "sub_mvno_operator"

    goto :goto_0

    .line 1374
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1375
    const-string v0, "mvno_operator"

    goto :goto_0

    .line 1376
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1377
    const-string v0, "sub_mvno_operator"

    goto :goto_0

    .line 1379
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1380
    const-string v0, "sub_mvno_operator"

    goto :goto_0

    .line 1382
    :cond_5
    const-string v0, "mvno_operator"

    goto :goto_0
.end method

.method public static getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "currentPhoneType"

    .prologue
    .line 1352
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMvnoOperator(Landroid/content/ContentResolver;II)Ljava/lang/String;
    .locals 5
    .parameter "cr"
    .parameter "currentPhoneType"
    .parameter "slot"

    .prologue
    .line 1356
    const-string v1, ""

    .line 1357
    .local v1, op:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/settings/ApnSettings;->getMvnoDbName(II)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, dbName:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    sget-boolean v2, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMvnoOperator: phoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_0
    return-object v1
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1088
    const-string v0, "gsm.sim.operator.numeric"

    .line 1089
    .local v0, keyString:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    const-string v0, "gsm.gsm.sim.operator.numeric"

    .line 1098
    :cond_0
    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1091
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    iget v1, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1093
    const-string v0, "gsm.gsm.sim.operator.numeric"

    goto :goto_0

    .line 1094
    :cond_2
    iget v1, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1095
    const-string v0, "gsm.sub.icc.operator.numeric"

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 935
    const/4 v7, 0x0

    .line 937
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 939
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor.getCount(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 941
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 942
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 944
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 945
    return-object v7
.end method

.method public static isApnLocked(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1267
    const/4 v7, 0x0

    .line 1268
    .local v7, isApnLocked:Z
    const/4 v8, 0x0

    .line 1269
    .local v8, lockState:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnSettings;->LOCK_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1270
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1271
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1272
    const-string v0, "apn_lock_state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_0
    if-eqz v8, :cond_2

    const/4 v7, 0x1

    .line 1276
    :goto_0
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isApnLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_1
    return v7

    .line 1275
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isCTLTEEnabled()Z
    .locals 1

    .prologue
    .line 1457
    invoke-static {}, Lcom/android/settings/ApnSettings;->isCTLTESIMCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/ApnSettings;->getLTELockStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCTLTESIMCard()Z
    .locals 6

    .prologue
    .line 1461
    const/4 v2, 0x0

    .line 1463
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v3

    const-string v4, "isCTLTESIMCard"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1464
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "isCTLTESIMCard"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1469
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    sget-boolean v3, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCTLTESIMCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_0
    return v2

    .line 1465
    :catch_0
    move-exception v1

    .line 1466
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1467
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCapabilityEnabled(I)Z
    .locals 6
    .parameter "capability"

    .prologue
    .line 1328
    const/4 v3, 0x0

    .line 1329
    .local v3, isCapabilityEnabled:Z
    const/4 v1, -0x1

    .line 1331
    .local v1, currentPhoneCapability:I
    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1332
    .local v0, class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "BUILT_PHONE_CAPABILITIES"

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

    .line 1333
    and-int v4, p0, v1

    if-ne p0, v4, :cond_0

    const/4 v3, 0x1

    .line 1338
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 1333
    .restart local v0       #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1334
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 1335
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ApnSettings"

    const-string v5, "isCapabilitiesEnabled Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isCmccSim(Ljava/lang/String;)Z
    .locals 4
    .parameter "numeric"

    .prologue
    .line 1538
    const/4 v0, 0x0

    .line 1548
    .local v0, result:Z
    if-eqz p0, :cond_0

    const-string v1, "460(0[0278]|12)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    const/4 v0, 0x1

    .line 1551
    :cond_0
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmccSim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_1
    return v0
.end method

.method private static isDeviceDWG()Z
    .locals 8

    .prologue
    .line 1311
    const/4 v4, 0x0

    .line 1312
    .local v4, result:Z
    const/4 v3, -0x1

    .line 1313
    .local v3, phoneWorld:I
    const/4 v2, -0x1

    .line 1315
    .local v2, phoneGSM1:I
    :try_start_0
    const-string v5, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1316
    .local v0, class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "BUILT_PHONE_FEATURE_FLAG_WORLD_PHONE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1317
    const-string v5, "BUILT_PHONE_MAIN_FLAG_GSM1"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1318
    or-int v5, v3, v2

    invoke-static {v5}, Lcom/android/settings/ApnSettings;->isCapabilityEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1323
    .end local v0           #class_HtcTelephonyCapability:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    sget-boolean v5, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDeviceDWG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    return v4

    .line 1319
    :catch_0
    move-exception v1

    .line 1320
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ApnSettings"

    const-string v6, "isDeviceDWG() Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1321
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isDisableHtcMvno()Z
    .locals 4

    .prologue
    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, result:Z
    const-string v1, "apn_disable_htc_mvno"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1394
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisableHtcMvno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_0
    return v0
.end method

.method public static isDisplayPPPNumberDataBearer()Z
    .locals 4

    .prologue
    .line 1409
    const/4 v0, 0x0

    .line 1410
    .local v0, result:Z
    const-string v1, "apn_display_ppp_number_data_bearer"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1411
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayPPPNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    return v0
.end method

.method public static isEnableDualPreferAPN()Z
    .locals 4

    .prologue
    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/ApnSettings;->isCTLTEEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    const/4 v0, 0x1

    .line 1433
    :cond_0
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableDualPreferAPN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_1
    return v0
.end method

.method public static isForceHideBearer()Z
    .locals 4

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1401
    .local v0, result:Z
    const-string v1, "apn_force_hide_bearer"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1402
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForceHideBearer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    return v0
.end method

.method public static isForceHideProtocol()Z
    .locals 4

    .prologue
    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, result:Z
    const-string v1, "apn_force_hide_protocol"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1419
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForceHideProtocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_0
    return v0
.end method

.method public static isHideCTLTE(Ljava/lang/String;)Z
    .locals 4
    .parameter "numeric"

    .prologue
    .line 1487
    const/4 v0, 0x0

    .line 1488
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/ApnEditor;->isLTE()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/ApnSettings;->isCTLTEEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45502"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    :cond_0
    const/4 v0, 0x1

    .line 1500
    :cond_1
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHideCTLTE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_2
    return v0
.end method

.method public static isLTECamped()Z
    .locals 8

    .prologue
    .line 1438
    const-string v2, "getRilRadioTechnology"

    .line 1439
    .local v2, methodGetRilRadioTechnology:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1440
    .local v4, result:Z
    const/4 v3, -0x1

    .line 1442
    .local v3, radio:I
    :try_start_0
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/htc/telephony/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1443
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1444
    const/16 v5, 0xe

    if-eq v3, v5, :cond_0

    const/16 v5, 0xd

    if-ne v3, v5, :cond_1

    .line 1445
    :cond_0
    const/4 v4, 0x1

    .line 1452
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLTECamped:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_2
    return v4

    .line 1447
    :catch_0
    move-exception v1

    .line 1448
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1449
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isNotifyNonLteApnWarningUI(Ljava/lang/String;)Z
    .locals 4
    .parameter "numeric"

    .prologue
    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, result:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->isCmccSim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/ApnSettings;->isLTECamped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1531
    const/4 v0, 0x1

    .line 1533
    :cond_0
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotifyNonLteApnWarning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_1
    return v0
.end method

.method public static isResetMvnoWhenResetApn(Ljava/lang/String;)Z
    .locals 10
    .parameter "numeric"

    .prologue
    .line 1507
    const/4 v5, 0x1

    .line 1508
    .local v5, result:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v6

    .line 1510
    .local v6, sku:I
    const/16 v7, 0x46

    if-ne v6, v7, :cond_0

    .line 1511
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1512
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "45400"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "45402"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "45410"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "45418"

    aput-object v8, v1, v7

    .line 1513
    .local v1, hkList:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1514
    .local v4, mccmnc:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1515
    const/4 v5, 0x0

    .line 1522
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #hkList:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mccmnc:Ljava/lang/String;
    :cond_0
    sget-boolean v7, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isResetMvnoWhenResetApn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_1
    return v5

    .line 1513
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #hkList:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isSpcsSimUnderUMTS(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "numeric"

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1286
    const/4 v1, 0x0

    .line 1303
    :cond_0
    :goto_0
    return v1

    .line 1288
    :cond_1
    const/4 v1, 0x0

    .line 1289
    .local v1, result:Z
    const/4 v0, -0x1

    .line 1290
    .local v0, phoneType:I
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1291
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    .line 1292
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1294
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1295
    if-eqz p1, :cond_4

    sget-object v3, Lcom/android/settings/ApnSettings;->NUMERIC_SPCS_3G:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/settings/ApnSettings;->NUMERIC_SPCS_4G:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1299
    :cond_3
    const/4 v1, 0x1

    .line 1302
    :cond_4
    sget-boolean v3, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSpcsSimUnderUMTS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSubGsmPhoneType()Z
    .locals 2

    .prologue
    .line 1230
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printAPNData()V
    .locals 1

    .prologue
    .line 1137
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1139
    :cond_0
    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings$2;->start()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    .line 1124
    :cond_0
    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 949
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 950
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 952
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 970
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 972
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 973
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 978
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 995
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->isResetMvnoWhenResetApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 996
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    iget v2, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 999
    :cond_3
    return v3
.end method

.method public static setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1
    .parameter "cr"
    .parameter "mvnoValue"
    .parameter "currentPhoneType"

    .prologue
    .line 1342
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 1343
    return-void
.end method

.method public static setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 4
    .parameter "cr"
    .parameter "mvnoValue"
    .parameter "currentPhoneType"
    .parameter "slot"

    .prologue
    .line 1346
    invoke-static {p2, p3}, Lcom/android/settings/ApnSettings;->getMvnoDbName(II)Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, dbName:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMvnoOperator: phoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1349
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 923
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 924
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 926
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v2, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange(): mPrefereUri - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedKey - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 930
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mHasRegistered:Z

    .line 1131
    :cond_0
    return-void
.end method


# virtual methods
.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "actionBarContainer"

    .prologue
    .line 1237
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1238
    new-instance v0, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCG? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , isGG? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 217
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 218
    const-string v3, "isSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 219
    .local v2, isSettings:I
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSettings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-nez v2, :cond_1

    .line 221
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 223
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 225
    const-string v3, "ApnSettings"

    const-string v4, "Redirect to CdmaApnSettings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/CdmaApnSettings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    .line 273
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isSettings:I
    :goto_0
    return-void

    .line 229
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #isSettings:I
    :cond_0
    if-eqz v0, :cond_3

    .line 230
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phonetype  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #isSettings:I
    :cond_1
    :goto_1
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    .line 241
    sget-object v3, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_GSM:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mDefaultAPNUri:Landroid/net/Uri;

    .line 242
    sget-object v3, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_GSM:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    .line 244
    iput v6, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    .line 264
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 267
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 271
    new-instance v3, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    goto :goto_0

    .line 233
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #isSettings:I
    :cond_3
    const-string v3, "ApnSettings"

    const-string v4, "cm is null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #isSettings:I
    :cond_4
    const-string v3, "ApnSettings"

    const-string v4, "intent is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 248
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_6

    .line 249
    const-string v3, "phone_type"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    .line 250
    iget v3, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 251
    const-string v3, "content://subgsmapn/carriers"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    .line 252
    sget-object v3, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_SUB:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mDefaultAPNUri:Landroid/net/Uri;

    .line 253
    sget-object v3, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_SUB:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    .line 260
    :cond_6
    :goto_3
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPhoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 254
    :cond_7
    iget v3, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    if-ne v3, v6, :cond_6

    .line 255
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$GsmCarriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    .line 256
    sget-object v3, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_GSM:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mDefaultAPNUri:Landroid/net/Uri;

    .line 257
    sget-object v3, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_GSM:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mPrefereUri:Landroid/net/Uri;

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1069
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 1074
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1076
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ac8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1077
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1080
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 789
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 793
    sget-boolean v0, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v1, "htc.apnsettings.tester"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    :cond_0
    const-string v0, "ro.apn.ui.hide_add"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0eaf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 802
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0eb8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 805
    return v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->unregisterReceiver()V

    .line 1109
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 1112
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1116
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 832
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 833
    const/4 v1, 0x0

    .line 835
    .local v1, apnLocked:Ljava/lang/String;
    :try_start_0
    const-class v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;

    const-string v6, "APN_LOCKED"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v1, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 841
    .local v2, apnState:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3LM APN_LOCKED: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 842
    if-ne v2, v5, :cond_0

    move v4, v5

    .line 857
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :goto_1
    return v4

    .line 836
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 837
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 848
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 857
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_1

    .line 850
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    move v4, v5

    .line 851
    goto :goto_1

    .line 854
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move v4, v5

    .line 855
    goto :goto_1

    .line 848
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsInForeground:Z

    .line 473
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 475
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-nez v0, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->unregisterReceiver()V

    .line 490
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 901
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): HtcPreference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 905
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 908
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/settings/ApnPreference;

    if-eqz v0, :cond_1

    .line 910
    check-cast p1, Lcom/android/settings/ApnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/ApnPreference;->get4G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->isNotifyNonLteApnWarningUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0b16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 919
    :cond_1
    return v3
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 873
    const-string v4, "[onPreferenceTreeClick]"

    invoke-static {v4}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 877
    const/4 v1, 0x0

    .line 879
    .local v1, apnLocked:Ljava/lang/String;
    :try_start_0
    const-class v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;

    const-string v5, "APN_LOCKED"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 885
    .local v2, apnState:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3LM APN_LOCKED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 886
    if-ne v2, v6, :cond_0

    .line 897
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :cond_0
    return v6

    .line 880
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 881
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 812
    if-eqz p1, :cond_2

    .line 813
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->isApnLocked(Landroid/content/Context;)Z

    move-result v1

    .line 814
    .local v1, isApnLocked:Z
    if-nez v1, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/ApnSettings;->isSpcsSimUnderUMTS(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    const/4 v1, 0x1

    .line 819
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 820
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 821
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 824
    .end local v0           #i:I
    .end local v1           #isApnLocked:Z
    .end local v2           #length:I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsInForeground:Z

    .line 282
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "htc.apnsettings.tester value is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "htc.apnsettings.tester"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 289
    const-string v0, "htc.apnsettings.tester"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "htc.apnsettings.tester"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, where:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "where: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "operator"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 331
    const/4 v11, 0x1

    .line 334
    .local v11, smartMvno:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->isDisableHtcMvno()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->isResetMvnoWhenResetApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    :cond_2
    const/4 v11, 0x0

    .line 340
    :cond_3
    if-eqz v6, :cond_8

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curson count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 343
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 345
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v11, :cond_7

    .line 346
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 347
    const-string v0, "operator"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, operators:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    .line 352
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 341
    .end local v10           #operators:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_7

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear MVNO setting op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    iget v2, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 372
    const-string v9, ""

    .line 375
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    if-nez v0, :cond_9

    .line 379
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v11, :cond_9

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    iget v2, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 395
    const-string v9, ""

    .line 400
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->printAPNData()V

    .line 405
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsMVNO:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_e

    .line 407
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/OperatorPicker;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v8, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 410
    const-string v0, "Type"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    :cond_a
    :goto_2
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v8           #intent:Landroid/content/Intent;
    :cond_b
    :goto_3
    return-void

    .line 411
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_c
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 412
    iget v0, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 413
    const-string v0, "Type"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 414
    :cond_d
    iget v0, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 415
    const-string v0, "Type"

    const/4 v1, 0x5

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 423
    :catch_0
    move-exception v0

    .line 434
    .end local v8           #intent:Landroid/content/Intent;
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->registerReceiver()V

    .line 437
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_11

    .line 438
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 442
    const/16 v0, 0x3e9

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    .line 443
    sget-boolean v0, Lcom/android/settings/ApnSettings;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "ApnSettings"

    const-string v1, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    :cond_f
    :goto_4
    const-string v0, ""

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 444
    :catch_1
    move-exception v7

    .line 445
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "ApnSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume.error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_10

    const-string v0, "no error message"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 450
    .end local v7           #e:Ljava/lang/Exception;
    :cond_11
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_4
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method resetTextViewsFocused()V
    .locals 4

    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 780
    .local v0, capacity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 781
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTextViewsFocusable(Z)V

    .line 782
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    iget v3, p0, Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setCurrentPhoneType(I)V

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    :cond_0
    return-void
.end method
