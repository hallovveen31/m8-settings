.class public Lcom/android/settings/CdmaApnSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CdmaApnSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CdmaApnSettings$4;,
        Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static DBG:Z = false

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ID_INDEX:I = 0x0

.field private static final INSERT_BY_INDEX:I = 0x4

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://cdmaapn/carriers/preferapn"

.field public static final READONLY:Ljava/lang/String; = "readonly"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://cdmaapn/carriers/restore"

.field private static final STATE:I = 0x5

.field static final TAG:Ljava/lang/String; = "CdmaApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field enterOperatorPicker:Z

.field private mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

.field private mHasRegistered:Z

.field private mIsInForeground:Z

.field private mIsMVNO:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    .line 97
    const-string v0, "content://cdmaapn/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://cdmaapn/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CdmaApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    .line 122
    new-instance v0, Lcom/android/settings/CdmaApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnSettings$1;-><init>(Lcom/android/settings/CdmaApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    .line 991
    iput-boolean v1, p0, Lcom/android/settings/CdmaApnSettings;->mIsInForeground:Z

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 955
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "CdmaApnSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/CdmaApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/CdmaApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/CdmaApnSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/CdmaApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/CdmaApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    return-void
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 643
    return-void
.end method

.method private fillList()V
    .locals 25

    .prologue
    .line 377
    invoke-static/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->isApnLocked(Landroid/content/Context;)Z

    move-result v14

    .line 379
    .local v14, isApnLocked:Z
    const/4 v5, 0x0

    .line 380
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 381
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    if-nez v2, :cond_a

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->isHideCTLTE(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND bearer = \'0\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v24, "_id"

    aput-object v24, v4, v7

    const/4 v7, 0x1

    const-string v24, "name"

    aput-object v24, v4, v7

    const/4 v7, 0x2

    const-string v24, "apn"

    aput-object v24, v4, v7

    const/4 v7, 0x3

    const-string v24, "type"

    aput-object v24, v4, v7

    const/4 v7, 0x4

    const-string v24, "insert_by"

    aput-object v24, v4, v7

    const/4 v7, 0x5

    const-string v24, "state"

    aput-object v24, v4, v7

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 431
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 433
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/CdmaApnSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceGroup;

    .line 434
    .local v9, apnList:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 436
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v16, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 439
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 440
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_12

    .line 441
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 444
    .local v15, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 445
    .local v23, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 446
    .local v13, insertBy:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 448
    .local v22, state:Ljava/lang/String;
    new-instance v19, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 450
    .local v19, pref:Lcom/android/settings/ApnPreference;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v13, :cond_2

    const-string v2, "internal"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "external"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    :cond_1
    const-string v2, "ctnet"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 463
    :cond_2
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 464
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 465
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/ApnPreference;->setCdma()V

    .line 466
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 468
    const/4 v11, 0x1

    .line 478
    .local v11, editable:Z
    if-eqz v23, :cond_4

    const-string v2, "netshare"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dun"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v13, :cond_4

    const-string v2, "interanl"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 481
    const/4 v11, 0x0

    .line 495
    :cond_4
    if-eqz v22, :cond_5

    const-string v2, "readonly"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    const/4 v11, 0x0

    .line 512
    :cond_5
    if-eqz v14, :cond_6

    const/4 v11, 0x0

    .line 513
    :cond_6
    if-nez v14, :cond_c

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setAllowChangePreferredApn(Z)V

    .line 516
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 519
    if-eqz v23, :cond_7

    const-string v2, "*"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "default"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_7
    const/16 v21, 0x1

    .line 521
    .local v21, selectable:Z
    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 522
    if-eqz v21, :cond_10

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 525
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 531
    :cond_8
    :goto_5
    if-eqz v22, :cond_f

    .line 533
    const-string v2, "hidden"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 535
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 560
    :cond_9
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 407
    .end local v8           #apn:Ljava/lang/String;
    .end local v9           #apnList:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #editable:Z
    .end local v13           #insertBy:Ljava/lang/String;
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #pref:Lcom/android/settings/ApnPreference;
    .end local v21           #selectable:Z
    .end local v22           #state:Ljava/lang/String;
    .end local v23           #type:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v18

    .line 409
    .local v18, op:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v18, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 457
    .end local v18           #op:Ljava/lang/String;
    .restart local v8       #apn:Ljava/lang/String;
    .restart local v9       #apnList:Lcom/htc/preference/HtcPreferenceGroup;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v13       #insertBy:Ljava/lang/String;
    .restart local v15       #key:Ljava/lang/String;
    .restart local v16       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    .restart local v17       #name:Ljava/lang/String;
    .restart local v19       #pref:Lcom/android/settings/ApnPreference;
    .restart local v22       #state:Ljava/lang/String;
    .restart local v23       #type:Ljava/lang/String;
    :cond_b
    const-string v2, "ctwap"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0a0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 513
    .restart local v11       #editable:Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 519
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 528
    .restart local v21       #selectable:Z
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    goto :goto_5

    .line 540
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_6

    .line 548
    :cond_10
    if-eqz v22, :cond_11

    .line 550
    const-string v2, "hidden"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 552
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 557
    :cond_11
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 562
    .end local v8           #apn:Ljava/lang/String;
    .end local v11           #editable:Z
    .end local v13           #insertBy:Ljava/lang/String;
    .end local v15           #key:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #pref:Lcom/android/settings/ApnPreference;
    .end local v21           #selectable:Z
    .end local v22           #state:Ljava/lang/String;
    .end local v23           #type:Ljava/lang/String;
    :cond_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 564
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/preference/HtcPreference;

    .line 565
    .local v20, preference:Lcom/htc/preference/HtcPreference;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_7

    .line 568
    .end local v20           #preference:Lcom/htc/preference/HtcPreference;
    :cond_13
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/CdmaApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    .line 569
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 142
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 144
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 146
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const-string v0, "gsm.cdma.uim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 695
    const/4 v7, 0x0

    .line 697
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/CdmaApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 699
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 700
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 703
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 704
    return-object v7
.end method

.method private printAPNData()V
    .locals 1

    .prologue
    .line 884
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    .line 950
    :goto_0
    return-void

    .line 886
    :cond_0
    new-instance v0, Lcom/android/settings/CdmaApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnSettings$2;-><init>(Lcom/android/settings/CdmaApnSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnSettings$2;->start()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CdmaApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    .line 871
    :cond_0
    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 708
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->showDialog(I)V

    .line 709
    sput-boolean v3, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    .line 711
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/CdmaApnSettings;Lcom/android/settings/CdmaApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 729
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 731
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 732
    new-instance v0, Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/CdmaApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/CdmaApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 754
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->isResetMvnoWhenResetApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 759
    :cond_3
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 686
    iput-object p1, p0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 689
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/CdmaApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    sget-object v2, Lcom/android/settings/CdmaApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mHasRegistered:Z

    .line 878
    :cond_0
    return-void
.end method

.method private updateCTApnName(Ljava/lang/String;Lcom/android/settings/ApnPreference;)V
    .locals 2
    .parameter "apnValue"
    .parameter "pref"

    .prologue
    .line 963
    if-nez p1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 967
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

    invoke-static {v0}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 968
    const-string v0, "ctnet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0a0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 970
    :cond_2
    const-string v0, "ctwap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

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
    .line 979
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 980
    new-instance v0, Lcom/android/settings/CdmaApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CdmaApnSettings$3;-><init>(Lcom/android/settings/CdmaApnSettings;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Lcom/android/settings/ApnSettings;->isEnableDualPreferAPN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/CdmaApnGroupSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->finish()V

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 169
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 822
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 827
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 829
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ac8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 830
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 833
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

    .line 580
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 583
    const-string v0, "ro.apn.ui.hide_add"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0eaf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 589
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0eb8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    return v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->unregisterReceiver()V

    .line 856
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 859
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 863
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 613
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    const/4 v1, 0x0

    .line 616
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

    .line 620
    :goto_0
    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v1, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 622
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

    invoke-static {v4}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 623
    if-ne v2, v5, :cond_0

    move v4, v5

    .line 638
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :goto_1
    return v4

    .line 617
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 618
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 629
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 638
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_1

    .line 631
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->addNewApn()V

    move v4, v5

    .line 632
    goto :goto_1

    .line 635
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->restoreDefaultApn()Z

    move v4, v5

    .line 636
    goto :goto_1

    .line 629
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
    .line 351
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsInForeground:Z

    .line 356
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 358
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    if-nez v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->unregisterReceiver()V

    .line 373
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 675
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CdmaApnSettings"

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

    .line 678
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 679
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/CdmaApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 682
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 647
    const-string v4, "[onPreferenceTreeClick]"

    invoke-static {v4}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupport3LM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    const/4 v1, 0x0

    .line 653
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

    .line 657
    :goto_0
    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 659
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

    invoke-static {v4}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 660
    if-ne v2, v6, :cond_0

    .line 671
    .end local v1           #apnLocked:Ljava/lang/String;
    .end local v2           #apnState:I
    :cond_0
    return v6

    .line 654
    .restart local v1       #apnLocked:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 655
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 598
    if-eqz p1, :cond_1

    .line 599
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->isApnLocked(Landroid/content/Context;)Z

    move-result v1

    .line 600
    .local v1, isApnLocked:Z
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 601
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 602
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 605
    .end local v0           #i:I
    .end local v1           #isApnLocked:Z
    .end local v2           #length:I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsInForeground:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

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

    .line 214
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 217
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

    invoke-static {v0}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 220
    const/4 v11, 0x1

    .line 223
    .local v11, smartMvno:Z
    invoke-static {}, Lcom/android/settings/ApnSettings;->isDisableHtcMvno()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->isResetMvnoWhenResetApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    :cond_1
    const/4 v11, 0x0

    .line 229
    :cond_2
    if-eqz v6, :cond_7

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    .line 234
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    const-string v0, "operator"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, operators:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    .line 240
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 230
    .end local v10           #operators:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_6

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear MVNO setting op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/CdmaApnSettings;->Log(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 260
    const-string v9, ""

    .line 263
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    if-nez v0, :cond_8

    .line 267
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v11, :cond_8

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ApnSettings;->setMvnoOperator(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 283
    const-string v9, ""

    .line 288
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->printAPNData()V

    .line 293
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsMVNO:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_b

    .line 295
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/OperatorPicker;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v8, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    const-string v0, "Type"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    :cond_9
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings/CdmaApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v8           #intent:Landroid/content/Intent;
    :cond_a
    :goto_2
    return-void

    .line 305
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 316
    .end local v8           #intent:Landroid/content/Intent;
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->registerReceiver()V

    .line 319
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_e

    .line 320
    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->fillList()V

    .line 324
    const/16 v0, 0x3e9

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->removeDialog(I)V

    .line 325
    sget-boolean v0, Lcom/android/settings/CdmaApnSettings;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "CdmaApnSettings"

    const-string v1, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :cond_c
    :goto_3
    const-string v0, ""

    invoke-direct {p0}, Lcom/android/settings/CdmaApnSettings;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 326
    :catch_1
    move-exception v7

    .line 327
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "CdmaApnSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).onResume.error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_d

    const-string v0, "no error message"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 332
    .end local v7           #e:Ljava/lang/Exception;
    :cond_e
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/CdmaApnSettings;->showDialog(I)V

    goto :goto_3
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/settings/CdmaApnSettings;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/CdmaApnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method resetTextViewsFocused()V
    .locals 4

    .prologue
    .line 572
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 573
    .local v0, capacity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 574
    iget-object v2, p0, Lcom/android/settings/CdmaApnSettings;->mAllApnPrefs:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTextViewsFocusable(Z)V

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method
