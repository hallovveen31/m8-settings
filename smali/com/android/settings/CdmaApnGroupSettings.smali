.class public Lcom/android/settings/CdmaApnGroupSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CdmaApnGroupSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CdmaApnGroupSettings$4;,
        Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final BEARER:I = 0x6

.field public static BEARER_LTE:Ljava/lang/String; = null

.field public static BEARER_NONE:Ljava/lang/String; = null

.field private static DBG:Z = false

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x4

.field private static final MENU_NEW_4G:I = 0x1

.field private static final MENU_NEW_NON_4G:I = 0x2

.field private static final MENU_RESTORE:I = 0x3

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_3G:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_4G:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://cdmaapn/carriers/preferapn"

.field public static final PREFERRED_APN_URI_3G:Ljava/lang/String; = "content://cdmaapn/carriers/preferapn_3g"

.field public static final PREFERRED_APN_URI_4G:Ljava/lang/String; = "content://cdmaapn/carriers/preferapn_4g"

.field public static final READONLY:Ljava/lang/String; = "readonly"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://cdmaapn/carriers/restore"

.field private static final STATE:I = 0x5

.field static final TAG:Ljava/lang/String; = "CdmaApnGroupSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field enterOperatorPicker:Z

.field private mAll4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

.field private mAllNon4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

.field private mHasRegistered:Z

.field private mIsInForeground:Z

.field private mIsMVNO:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelected3GKey:Ljava/lang/String;

.field private mSelected4GKey:Ljava/lang/String;

.field private mSelectedKey:Ljava/lang/String;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    .line 105
    const-string v0, "content://cdmaapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnGroupSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://cdmaapn/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://cdmaapn/carriers/preferapn_4g"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI_4G:Landroid/net/Uri;

    .line 108
    const-string v0, "content://cdmaapn/carriers/preferapn_3g"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI_3G:Landroid/net/Uri;

    .line 129
    const-string v0, "0"

    sput-object v0, Lcom/android/settings/CdmaApnGroupSettings;->BEARER_NONE:Ljava/lang/String;

    .line 130
    const-string v0, "14"

    sput-object v0, Lcom/android/settings/CdmaApnGroupSettings;->BEARER_LTE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 127
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mHasRegistered:Z

    .line 137
    new-instance v0, Lcom/android/settings/CdmaApnGroupSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnGroupSettings$1;-><init>(Lcom/android/settings/CdmaApnGroupSettings;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->enterOperatorPicker:Z

    .line 1114
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsInForeground:Z

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1078
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 1079
    const-string v0, "CdmaApnGroupSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/CdmaApnGroupSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/CdmaApnGroupSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z

    return v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/CdmaApnGroupSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CdmaApnGroupSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    return-void
.end method

.method private addNewApn(Z)V
    .locals 3
    .parameter "is4G"

    .prologue
    .line 687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 688
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is4G"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 689
    const-string v1, "editable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnGroupSettings;->startActivity(Landroid/content/Intent;)V

    .line 691
    return-void
.end method

.method private fillList()V
    .locals 32

    .prologue
    .line 381
    invoke-static/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->isApnLocked(Landroid/content/Context;)Z

    move-result v18

    .line 383
    .local v18, isApnLocked:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->isLTECamped()Z

    move-result v20

    .line 384
    .local v20, isLTECampted:Z
    const/4 v5, 0x0

    .line 385
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 386
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z

    if-nez v2, :cond_b

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v31, "_id"

    aput-object v31, v4, v7

    const/4 v7, 0x1

    const-string v31, "name"

    aput-object v31, v4, v7

    const/4 v7, 0x2

    const-string v31, "apn"

    aput-object v31, v4, v7

    const/4 v7, 0x3

    const-string v31, "type"

    aput-object v31, v4, v7

    const/4 v7, 0x4

    const-string v31, "insert_by"

    aput-object v31, v4, v7

    const/4 v7, 0x5

    const-string v31, "state"

    aput-object v31, v4, v7

    const/4 v7, 0x6

    const-string v31, "bearer"

    aput-object v31, v4, v7

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 430
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 432
    const-string v2, "apn_list_group1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnGroupSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceGroup;

    .line 433
    .local v9, apnList4G:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 435
    const-string v2, "apn_list_group2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnGroupSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceGroup;

    .line 436
    .local v10, apnListNon4G:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v10}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 438
    if-eqz v20, :cond_c

    .line 439
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    .line 440
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    .line 446
    :goto_1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v22, mmsApnList4G:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v23, mmsApnListNon4G:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getSelected4GApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected4GKey:Ljava/lang/String;

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getSelected3GApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected3GKey:Ljava/lang/String;

    .line 453
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 454
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_19

    .line 455
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 456
    .local v24, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 458
    .local v21, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 459
    .local v30, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 460
    .local v15, insertBy:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 462
    .local v29, state:Ljava/lang/String;
    new-instance v26, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 464
    .local v26, pref:Lcom/android/settings/ApnPreference;
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, bearer:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/CdmaApnGroupSettings;->BEARER_NONE:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v16, 0x1

    .line 466
    .local v16, is4G:Z
    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->set4G(Z)V

    .line 468
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v15, :cond_1

    const-string v2, "internal"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "external"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    const-string v2, "ctnet"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    :cond_1
    :goto_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 483
    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/ApnPreference;->setCdma()V

    .line 484
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 486
    const/4 v13, 0x1

    .line 488
    .local v13, editable:Z
    if-eqz v30, :cond_3

    const-string v2, "netshare"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dun"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v15, :cond_3

    const-string v2, "interanl"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    const/4 v13, 0x0

    .line 505
    :cond_3
    if-eqz v29, :cond_4

    const-string v2, "readonly"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 507
    const/4 v13, 0x0

    .line 511
    :cond_4
    const/16 v17, 0x1

    .line 512
    .local v17, isAllowChangePreferredAPN:Z
    if-eqz v18, :cond_f

    .line 513
    const/4 v13, 0x0

    .line 514
    const/16 v17, 0x0

    .line 522
    :cond_5
    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setAllowChangePreferredApn(Z)V

    .line 525
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 528
    if-eqz v30, :cond_6

    const-string v2, "*"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_6
    const/16 v28, 0x1

    .line 530
    .local v28, selectable:Z
    :goto_6
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 531
    if-eqz v28, :cond_16

    .line 532
    const/16 v19, 0x0

    .line 534
    .local v19, isChecked:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected3GKey:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected3GKey:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 536
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 542
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected4GKey:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected4GKey:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 544
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->set4GChecked(Z)V

    .line 550
    :cond_8
    :goto_8
    if-eqz v29, :cond_9

    const-string v2, "hidden"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 552
    :cond_9
    if-eqz v16, :cond_15

    .line 553
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 570
    .end local v19           #isChecked:Z
    :cond_a
    :goto_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 412
    .end local v8           #apn:Ljava/lang/String;
    .end local v9           #apnList4G:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v10           #apnListNon4G:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v11           #bearer:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #editable:Z
    .end local v15           #insertBy:Ljava/lang/String;
    .end local v16           #is4G:Z
    .end local v17           #isAllowChangePreferredAPN:Z
    .end local v21           #key:Ljava/lang/String;
    .end local v22           #mmsApnList4G:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .end local v23           #mmsApnListNon4G:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .end local v24           #name:Ljava/lang/String;
    .end local v26           #pref:Lcom/android/settings/ApnPreference;
    .end local v28           #selectable:Z
    .end local v29           #state:Ljava/lang/String;
    .end local v30           #type:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v25

    .line 414
    .local v25, op:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v25, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 442
    .end local v25           #op:Ljava/lang/String;
    .restart local v9       #apnList4G:Lcom/htc/preference/HtcPreferenceGroup;
    .restart local v10       #apnListNon4G:Lcom/htc/preference/HtcPreferenceGroup;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    .line 443
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_1

    .line 465
    .restart local v8       #apn:Ljava/lang/String;
    .restart local v11       #bearer:Ljava/lang/String;
    .restart local v15       #insertBy:Ljava/lang/String;
    .restart local v21       #key:Ljava/lang/String;
    .restart local v22       #mmsApnList4G:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .restart local v23       #mmsApnListNon4G:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .restart local v24       #name:Ljava/lang/String;
    .restart local v26       #pref:Lcom/android/settings/ApnPreference;
    .restart local v29       #state:Ljava/lang/String;
    .restart local v30       #type:Ljava/lang/String;
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 475
    .restart local v16       #is4G:Z
    :cond_e
    const-string v2, "ctwap"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 516
    .restart local v13       #editable:Z
    .restart local v17       #isAllowChangePreferredAPN:Z
    :cond_f
    if-eqz v16, :cond_10

    if-eqz v20, :cond_11

    :cond_10
    if-nez v16, :cond_5

    if-eqz v20, :cond_5

    .line 519
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 528
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 539
    .restart local v19       #isChecked:Z
    .restart local v28       #selectable:Z
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 547
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->set4GChecked(Z)V

    goto/16 :goto_8

    .line 555
    :cond_15
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_9

    .line 561
    .end local v19           #isChecked:Z
    :cond_16
    if-eqz v29, :cond_17

    const-string v2, "hidden"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 563
    :cond_17
    if-eqz v16, :cond_18

    .line 564
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 566
    :cond_18
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 572
    .end local v8           #apn:Ljava/lang/String;
    .end local v11           #bearer:Ljava/lang/String;
    .end local v13           #editable:Z
    .end local v15           #insertBy:Ljava/lang/String;
    .end local v16           #is4G:Z
    .end local v17           #isAllowChangePreferredAPN:Z
    .end local v21           #key:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v26           #pref:Lcom/android/settings/ApnPreference;
    .end local v28           #selectable:Z
    .end local v29           #state:Ljava/lang/String;
    .end local v30           #type:Ljava/lang/String;
    :cond_19
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 574
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/preference/HtcPreference;

    .line 575
    .local v27, preference:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_a

    .line 578
    .end local v27           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/preference/HtcPreference;

    .line 579
    .restart local v27       #preference:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_b

    .line 582
    .end local v27           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1b
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/CdmaApnGroupSettings;->mAll4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    .line 583
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/CdmaApnGroupSettings;->mAllNon4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    .line 594
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 157
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 161
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const-string v0, "gsm.cdma.uim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelected3GApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    .line 812
    const/4 v8, 0x0

    .line 813
    .local v8, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 816
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI_3G:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 818
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 820
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 827
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 828
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 831
    :cond_1
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CdmaApnGroupSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelected3GApnKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_2
    return-object v8

    .line 822
    :catch_0
    move-exception v7

    .line 823
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private getSelected4GApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    .line 775
    const/4 v8, 0x0

    .line 776
    .local v8, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 779
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI_4G:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 781
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 783
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 790
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 791
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_1
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CdmaApnGroupSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelected4GApnKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_2
    return-object v8

    .line 785
    :catch_0
    move-exception v7

    .line 786
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 787
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 748
    const/4 v7, 0x0

    .line 750
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 752
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 753
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 754
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 756
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 757
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CdmaApnGroupSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedApnKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1
    return-object v7
.end method

.method private printAPNData()V
    .locals 1

    .prologue
    .line 1007
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1009
    :cond_0
    new-instance v0, Lcom/android/settings/CdmaApnGroupSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnGroupSettings$2;-><init>(Lcom/android/settings/CdmaApnGroupSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnGroupSettings$2;->start()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mHasRegistered:Z

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CdmaApnGroupSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mHasRegistered:Z

    .line 994
    :cond_0
    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 836
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnGroupSettings;->showDialog(I)V

    .line 837
    sput-boolean v3, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnMode:Z

    .line 839
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/CdmaApnGroupSettings;Lcom/android/settings/CdmaApnGroupSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 857
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 859
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 860
    new-instance v0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/CdmaApnGroupSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 884
    return v3
.end method

.method private setSelected3GApnKey(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected3GKey:Ljava/lang/String;

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 802
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 803
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "apn_id"

    iget-object v4, p0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected3GKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :try_start_0
    sget-object v3, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI_3G:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSelected4GApnKey(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected4GKey:Ljava/lang/String;

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 765
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 766
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "apn_id"

    iget-object v4, p0, Lcom/android/settings/CdmaApnGroupSettings;->mSelected4GKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :try_start_0
    sget-object v3, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI_4G:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 739
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings;->mSelectedKey:Ljava/lang/String;

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 742
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/CdmaApnGroupSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    sget-object v2, Lcom/android/settings/CdmaApnGroupSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mHasRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnGroupSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 999
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mHasRegistered:Z

    .line 1001
    :cond_0
    return-void
.end method

.method private updateCTApnName(Ljava/lang/String;Lcom/android/settings/ApnPreference;)V
    .locals 2
    .parameter "apnValue"
    .parameter "pref"

    .prologue
    .line 1086
    if-nez p1, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update CT apn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 1091
    const-string v0, "ctnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0a0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1093
    :cond_2
    const-string v0, "ctwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0a0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "actionBarContainer"

    .prologue
    .line 1102
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1103
    new-instance v0, Lcom/android/settings/CdmaApnGroupSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnGroupSettings$3;-><init>(Lcom/android/settings/CdmaApnGroupSettings;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnGroupSettings;->addPreferencesFromResource(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 176
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 178
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 945
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 950
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 952
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ac8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 953
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 956
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x1080033

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 610
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 613
    const-string v0, "ro.apn.ui.hide_add"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0ae5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 617
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ae6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 622
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0eb8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 625
    return v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->unregisterReceiver()V

    .line 979
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 982
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 986
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 654
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    const/4 v1, 0x0

    .line 657
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

    .line 661
    :goto_0
    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 663
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

    invoke-static {v4}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 664
    if-ne v2, v5, :cond_0

    move v4, v5

    .line 683
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :goto_1
    return v4

    .line 658
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 659
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 670
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 683
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_1

    .line 672
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/settings/CdmaApnGroupSettings;->addNewApn(Z)V

    move v4, v5

    .line 673
    goto :goto_1

    .line 676
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/android/settings/CdmaApnGroupSettings;->addNewApn(Z)V

    move v4, v5

    .line 677
    goto :goto_1

    .line 680
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->restoreDefaultApn()Z

    move v4, v5

    .line 681
    goto :goto_1

    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsInForeground:Z

    .line 360
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 362
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->enterOperatorPicker:Z

    if-nez v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->unregisterReceiver()V

    .line 377
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CdmaApnGroupSettings"

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

    .line 727
    :cond_0
    instance-of v0, p1, Lcom/android/settings/ApnPreference;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 728
    check-cast p1, Lcom/android/settings/ApnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/ApnPreference;->get4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/CdmaApnGroupSettings;->setSelected4GApnKey(Ljava/lang/String;)V

    .line 735
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 731
    .restart local p2
    :cond_2
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/CdmaApnGroupSettings;->setSelected3GApnKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 695
    const-string v4, "[onPreferenceTreeClick]"

    invoke-static {v4}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 699
    const/4 v1, 0x0

    .line 701
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

    .line 705
    :goto_0
    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 707
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

    invoke-static {v4}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 708
    if-ne v2, v6, :cond_0

    .line 719
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :cond_0
    return v6

    .line 702
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 703
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 631
    if-eqz p1, :cond_2

    .line 632
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->isApnLocked(Landroid/content/Context;)Z

    move-result v1

    .line 633
    .local v1, isApnLocked:Z
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    .line 634
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 635
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-nez v1, :cond_0

    move v4, v5

    :goto_1
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 635
    goto :goto_1

    .line 637
    :cond_1
    if-nez v1, :cond_2

    .line 638
    invoke-static {}, Lcom/android/settings/ApnSettings;->isLTECamped()Z

    move-result v2

    .line 639
    .local v2, isLTECampted:Z
    if-eqz v2, :cond_3

    .line 640
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 646
    .end local v0           #i:I
    .end local v1           #isApnLocked:Z
    .end local v2           #isLTECampted:Z
    .end local v3           #length:I
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4

    .line 642
    .restart local v0       #i:I
    .restart local v1       #isApnLocked:Z
    .restart local v2       #isLTECampted:Z
    .restart local v3       #length:I
    :cond_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsInForeground:Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getOperatorNumeric()Ljava/lang/String;

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

    .line 221
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

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

    .line 224
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 227
    const/4 v11, 0x1

    .line 229
    .local v11, smartMvno:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->isDisableHtcMvno()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v11, 0x0

    .line 233
    :cond_1
    if-eqz v6, :cond_6

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 237
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v11, :cond_5

    .line 238
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    const-string v0, "operator"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, operators:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->enterOperatorPicker:Z

    .line 244
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 234
    .end local v10           #operators:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_5

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear MVNO setting op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 264
    const-string v9, ""

    .line 267
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z

    if-nez v0, :cond_7

    .line 271
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v11, :cond_7

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 287
    const-string v9, ""

    .line 292
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->printAPNData()V

    .line 297
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_a

    .line 299
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/OperatorPicker;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v8, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    const-string v0, "Type"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    :cond_8
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings/CdmaApnGroupSettings;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v8           #intent:Landroid/content/Intent;
    :cond_9
    :goto_2
    return-void

    .line 309
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 320
    .end local v8           #intent:Landroid/content/Intent;
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->registerReceiver()V

    .line 323
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_d

    .line 324
    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->fillList()V

    .line 328
    const/16 v0, 0x3e9

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnGroupSettings;->removeDialog(I)V

    .line 329
    sget-boolean v0, Lcom/android/settings/CdmaApnGroupSettings;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "CdmaApnGroupSettings"

    const-string v1, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :cond_b
    :goto_3
    const-string v0, ""

    invoke-direct {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 330
    :catch_1
    move-exception v7

    .line 331
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "CdmaApnGroupSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume.error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_c

    const-string v0, "no error message"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 336
    .end local v7           #e:Ljava/lang/Exception;
    :cond_d
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnGroupSettings;->showDialog(I)V

    goto :goto_3
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnGroupSettings;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnGroupSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method resetTextViewsFocused()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 597
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings;->mAll4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 598
    .local v0, capacity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 599
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings;->mAll4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTextViewsFocusable(Z)V

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings;->mAllNon4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 603
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings;->mAllNon4GApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTextViewsFocusable(Z)V

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 606
    :cond_1
    return-void
.end method
