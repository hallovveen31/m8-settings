.class public Lcom/android/settings/ClassicSettings;
.super Landroid/preference/PreferenceActivity;
.source "ClassicSettings.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ClassicSettings$UserDictionarySettingsActivity;,
        Lcom/android/settings/ClassicSettings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String; = null

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settings.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_TITLE"

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settings.PARENT_HEADER"


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/ClassicSettings$UserDictionarySettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ClassicSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 102
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 830
    return-void

    .line 102
    :array_0
    .array-data 0x4
        0xfat 0x2t 0x9t 0x7ft
        0xfet 0x2t 0x9t 0x7ft
        0x1t 0x3t 0x9t 0x7ft
        0x5t 0x3t 0x9t 0x7ft
        0x14t 0x3t 0x9t 0x7ft
        0x11t 0x3t 0x9t 0x7ft
        0x1dt 0x3t 0x9t 0x7ft
        0x1at 0x3t 0x9t 0x7ft
        0xbt 0x3t 0x9t 0x7ft
        0xdt 0x3t 0x9t 0x7ft
        0x20t 0x3t 0x9t 0x7ft
        0x8t 0x3t 0x9t 0x7ft
        0x21t 0x3t 0x9t 0x7ft
        0x27t 0x3t 0x9t 0x7ft
        0xet 0x3t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/ClassicSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ClassicSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/ClassicSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 570
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 572
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 589
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 573
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ClassicSettings;->mTopLevelHeaderId:I

    .line 574
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ClassicSettings;->mFragmentClass:Ljava/lang/String;

    .line 577
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 578
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 580
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 581
    iget-object v3, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 582
    if-eqz v2, :cond_0

    .line 583
    iget-object v3, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 329
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 336
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 17
    .parameter
    .parameter "headerIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v14}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, accountTypes:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v14, v5

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v3, accountHeaders:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v7, v5

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, v7, v10

    .line 511
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 512
    .local v11, label:Ljava/lang/CharSequence;
    if-nez v11, :cond_0

    .line 510
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 516
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 517
    .local v6, accounts:[Landroid/accounts/Account;
    array-length v14, v6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v14, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v13, 0x1

    .line 519
    .local v13, skipToAccount:Z
    :goto_2
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 520
    .local v2, accHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 521
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v14, :cond_1

    .line 522
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 524
    :cond_1
    if-eqz v13, :cond_4

    .line 525
    const v14, 0x7f0c11b4

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 526
    const v14, 0x7f0c11b4

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 527
    const-class v14, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 528
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 530
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 547
    :cond_2
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .end local v2           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v13           #skipToAccount:Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 535
    .restart local v2       #accHeader:Landroid/preference/PreferenceActivity$Header;
    .restart local v13       #skipToAccount:Z
    :cond_4
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 536
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 537
    const-class v14, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 538
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 539
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ClassicSettings;->isMultiPane()Z

    move-result v14

    if-nez v14, :cond_2

    .line 543
    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_label"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 551
    .end local v2           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #accounts:[Landroid/accounts/Account;
    .end local v11           #label:Ljava/lang/CharSequence;
    .end local v13           #skipToAccount:Z
    :cond_5
    new-instance v14, Lcom/android/settings/ClassicSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/ClassicSettings$3;-><init>(Lcom/android/settings/ClassicSettings;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 558
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    .line 559
    .local v8, header:Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v9, p2, 0x1

    .end local p2
    .local v9, headerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v9

    .end local v9           #headerIndex:I
    .restart local p2
    goto :goto_4

    .line 561
    .end local v8           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/ClassicSettings;->mListeningToAccountUpdates:Z

    if-nez v14, :cond_7

    .line 562
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 563
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/ClassicSettings;->mListeningToAccountUpdates:Z

    .line 565
    :cond_7
    return p2
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ClassicSettings;->mInLocalHeaderSwitch:Z

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/ClassicSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ClassicSettings;->mInLocalHeaderSwitch:Z

    .line 271
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 287
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 290
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 292
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 293
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 295
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 296
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 297
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 298
    iput-object v4, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 300
    invoke-direct {p0, v4}, Lcom/android/settings/ClassicSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 301
    iget v7, p0, Lcom/android/settings/ClassicSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settings/ClassicSettings;->highlightHeader(I)V

    .line 303
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 304
    iget-object v7, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 306
    iget-object v7, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v3

    .line 309
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v5, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v6, "show"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 443
    .local v4, showDev:Z
    const/4 v1, 0x0

    .line 445
    .local v1, i:I
    iget-object v5, p0, Lcom/android/settings/ClassicSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 446
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 447
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 449
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v5

    .line 450
    .local v2, id:I
    const v5, 0x7f090303

    if-eq v2, v5, :cond_1

    const v5, 0x7f09031c

    if-ne v2, v5, :cond_4

    .line 488
    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/ClassicSettings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v5, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 491
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 497
    iget-object v5, p0, Lcom/android/settings/ClassicSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_3

    invoke-static {v0}, Lcom/android/settings/ClassicSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 499
    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 501
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ClassicSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_4
    const v5, 0x7f0902fa

    if-ne v2, v5, :cond_5

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 455
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 457
    :cond_5
    const v5, 0x7f0902fe

    if-ne v2, v5, :cond_6

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 460
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 462
    :cond_6
    const v5, 0x7f090301

    if-ne v2, v5, :cond_7

    .line 464
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 467
    .local v3, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 470
    :catch_0
    move-exception v5

    goto :goto_1

    .line 476
    .end local v3           #netManager:Landroid/os/INetworkManagementService;
    :cond_7
    const v5, 0x7f090308

    if-ne v2, v5, :cond_9

    .line 477
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 480
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 482
    :cond_9
    const v5, 0x7f090324

    if-ne v2, v5, :cond_1

    .line 483
    if-nez v4, :cond_1

    .line 484
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 505
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #id:I
    :cond_a
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 340
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 341
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/ClassicSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 345
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 346
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 348
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 349
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 353
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 354
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 357
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 351
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 357
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mFragmentClass:Ljava/lang/String;

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .parameter "fragmentName"

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/ClassicSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 262
    sget-object v1, Lcom/android/settings/ClassicSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 264
    :goto_1
    return v1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 822
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->invalidateHeaders()V

    .line 824
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f060041

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ClassicSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 436
    invoke-direct {p0, p1}, Lcom/android/settings/ClassicSettings;->updateHeaderList(Ljava/util/List;)V

    .line 437
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 2
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 426
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/ClassicSubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 427
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "settings:ui_options"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 144
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 145
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 148
    const-string v0, "development"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/ClassicSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 151
    invoke-direct {p0}, Lcom/android/settings/ClassicSettings;->getMetaData()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ClassicSettings;->mInLocalHeaderSwitch:Z

    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    iput-boolean v3, p0, Lcom/android/settings/ClassicSettings;->mInLocalHeaderSwitch:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget v0, p0, Lcom/android/settings/ClassicSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/settings/ClassicSettings;->highlightHeader(I)V

    .line 160
    const v0, 0x7f0c0c2c

    invoke-virtual {p0, v0}, Lcom/android/settings/ClassicSettings;->setTitle(I)V

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    .line 165
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 166
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 170
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/ClassicSettings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/ClassicSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ClassicSettings$1;-><init>(Lcom/android/settings/ClassicSettings;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/settings/ClassicSettings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 189
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/ClassicSettings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/ClassicSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 388
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 389
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 392
    iput-object v1, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 396
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 3
    .parameter "header"
    .parameter "position"

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 776
    .local v0, revert:Z
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 778
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/settings/ClassicSettings;->highlightHeader(I)V

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ClassicSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 315
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/ClassicSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 324
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 229
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/ClassicSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Lcom/android/settings/ClassicSettings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/ClassicSettings$HeaderAdapter;->pause()V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 236
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 788
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 789
    .local v3, titleRes:I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    const v3, 0x7f0c0e1b

    .line 799
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/ClassicSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 801
    const/4 v0, 0x1

    return v0

    .line 791
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    const v3, 0x7f0c0c5d

    goto :goto_0

    .line 796
    :cond_2
    const v3, 0x7f0c0c5b

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 208
    new-instance v1, Lcom/android/settings/ClassicSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ClassicSettings$2;-><init>(Lcom/android/settings/ClassicSettings;)V

    iput-object v1, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 214
    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/ClassicSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 218
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/ClassicSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lcom/android/settings/ClassicSettings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/ClassicSettings$HeaderAdapter;->resume()V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->invalidateHeaders()V

    .line 222
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 816
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v0, Lcom/android/settings/ClassicSettings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/ClassicSettings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ClassicSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ClassicSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter "targetIntent"

    .prologue
    .line 806
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ClassicSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/ClassicSettings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 276
    iput-object v1, p0, Lcom/android/settings/ClassicSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 277
    iput-object v1, p0, Lcom/android/settings/ClassicSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 279
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 280
    return-void
.end method
