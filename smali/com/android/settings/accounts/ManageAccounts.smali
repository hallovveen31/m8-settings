.class public Lcom/android/settings/accounts/ManageAccounts;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccounts.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;
    }
.end annotation


# static fields
.field private static final AUTO_SYNC_TOGGLE_KEY:Ljava/lang/String; = "autoSyncToggle"

.field private static final AUTO_TEST_LOG:Ljava/lang/String; = "AutoTest"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_ACTION:Ljava/lang/String; = "AccountAction"

.field private static final EXTRA_FLAG:Ljava/lang/String; = "AccountAction"

.field private static final MANAGE_ACCOUNTS_CATEGORY_KEY:Ljava/lang/String; = "manageAccountsCategory"

.field private static final MENU_ADD_ACCOUNT_ID:I = 0x1

.field private static final MENU_SYNC_ALL_ID:I = 0x2

.field private static final MENU_SYNC_CANCEL_ID:I = 0x3

.field private static final REQUEST_SHOW_SYNC_SETTINGS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field firstSet:Z

.field private isSyncing:Z

.field private mAccounts:[Landroid/accounts/Account;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncToggle:Lcom/android/settings/accounts/OptionTogglePreference;

.field private mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;

.field private mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

.field private mDividerController:Lcom/htc/widget/IDividerController;

.field private mErrorInfoView:Landroid/view/View;

.field private mFilter:Landroid/content/IntentFilter;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/accounts/ManageAccounts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/accounts/ManageAccounts;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mAccounts:[Landroid/accounts/Account;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/ManageAccounts;->firstSet:Z

    .line 81
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 733
    new-instance v0, Lcom/android/settings/accounts/ManageAccounts$5;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccounts$5;-><init>(Lcom/android/settings/accounts/ManageAccounts;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mDividerController:Lcom/htc/widget/IDividerController;

    return-void
.end method

.method private SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    .locals 18
    .parameter "accounts"

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccounts;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 332
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v12

    .line 333
    .local v12, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 336
    .local v2, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 337
    aget-object v11, v12, v6

    .line 339
    .local v11, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v11}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 340
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 341
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 349
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccounts;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v0, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    .end local v11           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    sget-boolean v15, Lcom/android/settings/accounts/ManageAccounts;->DEBUG:Z

    if-eqz v15, :cond_3

    .line 353
    sget-object v15, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SyncCheckedAuthorityForAllAccount accounts.length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v10, v0

    :goto_2
    if-ge v6, v10, :cond_7

    .line 357
    aget-object v1, p1, v6

    .line 358
    .local v1, account:Landroid/accounts/Account;
    iget-object v15, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 359
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    .line 360
    const/4 v8, 0x0

    .local v8, j:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, m:I
    :goto_3
    if-ge v8, v9, :cond_5

    .line 361
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 363
    .local v4, authority:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 364
    .local v14, syncState:I
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 366
    .local v13, syncEnabled:Z
    if-lez v14, :cond_4

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    .line 367
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v5, extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 360
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 373
    .end local v4           #authority:Ljava/lang/String;
    .end local v8           #j:I
    .end local v9           #m:I
    .end local v13           #syncEnabled:Z
    .end local v14           #syncState:I
    :cond_5
    if-eqz v1, :cond_6

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccounts;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 376
    .restart local v4       #authority:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 377
    .restart local v5       #extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 356
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 382
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ManageAccounts;Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/ManageAccounts;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/ManageAccounts;Lcom/android/settings/accounts/ManageAccountPreference;I)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ManageAccounts;->setIconRunnable(Lcom/android/settings/accounts/ManageAccountPreference;I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accounts/ManageAccounts;ZZ)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ManageAccounts;->getSyncButtonStatueRunnable(ZZ)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accounts/ManageAccounts;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/accounts/ManageAccounts;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/accounts/ManageAccounts;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mErrorInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accounts/ManageAccounts;)Lcom/android/settings/accounts/OptionTogglePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mAutoSyncToggle:Lcom/android/settings/accounts/OptionTogglePreference;

    return-object v0
.end method

.method private checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    .locals 7
    .parameter "account"
    .parameter "authority"
    .parameter "multiSync"

    .prologue
    const/4 v4, 0x0

    .line 585
    if-eqz p3, :cond_0

    array-length v5, p3

    if-nez v5, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v4

    .line 588
    :cond_1
    array-length v3, p3

    .line 589
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 590
    aget-object v5, p3, v0

    if-eqz v5, :cond_2

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    if-nez v5, :cond_3

    .line 589
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 592
    :cond_3
    new-instance v1, Landroid/accounts/Account;

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v6, p3, v0

    iget-object v6, v6, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v1, itemAccount:Landroid/accounts/Account;
    aget-object v5, p3, v0

    iget-object v2, v5, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 594
    .local v2, itemAuthority:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 595
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getAccountPreferenceIntent(Lcom/android/settings/accounts/ManageAccountPreference;)Landroid/content/Intent;
    .locals 11
    .parameter "acctPref"

    .prologue
    const/high16 v10, 0x1000

    .line 389
    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 390
    .local v5, mAccount:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 391
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v7, "AccountAction"

    invoke-virtual {v1, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, action:Ljava/lang/String;
    const-string v7, "AccountAction"

    invoke-virtual {v1, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, flag:Ljava/lang/String;
    sget-object v7, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountAction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accountFlag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "com.htc.VzWBASync"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 406
    if-nez v0, :cond_1

    .line 407
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.VzWBackupAssistantClient.SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_0
    if-eqz v3, :cond_2

    .line 414
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 415
    .local v6, nflag:I
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v6           #nflag:I
    :cond_0
    :goto_1
    const-string v7, "account"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v7, v4

    .line 460
    :goto_2
    return-object v7

    .line 410
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 416
    :catch_0
    move-exception v2

    .line 417
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 418
    sget-object v7, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentTask (com.htc.VzWBackupAssistantClient.SETTINGS) flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 423
    :cond_3
    const-string v7, "com.htc.vmm.Backup"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 424
    if-nez v0, :cond_4

    .line 425
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v7, "com.htc.vmm.settings.Backup"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_3
    if-eqz v3, :cond_5

    .line 431
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 432
    .restart local v6       #nflag:I
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 433
    .end local v6           #nflag:I
    :catch_1
    move-exception v2

    .line 434
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 435
    sget-object v7, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentTask (com.htc.vmm.settings.Backup) flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 438
    :cond_5
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 441
    :cond_6
    if-nez v0, :cond_7

    .line 444
    const/4 v7, 0x0

    goto :goto_2

    .line 446
    :cond_7
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v4       #intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 450
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 451
    .restart local v6       #nflag:I
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 452
    .end local v6           #nflag:I
    :catch_2
    move-exception v2

    .line 453
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 454
    sget-object v7, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentTask (android.settings.ACCOUNT_SYNC_SETTINGS) flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getSyncButtonStatueRunnable(ZZ)Ljava/lang/Runnable;
    .locals 1
    .parameter "anySyncFailed"
    .parameter "sync"

    .prologue
    .line 568
    new-instance v0, Lcom/android/settings/accounts/ManageAccounts$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/accounts/ManageAccounts$3;-><init>(Lcom/android/settings/accounts/ManageAccounts;ZZ)V

    return-object v0
.end method

.method private initBackSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 2
    .parameter "actionBarContainer"

    .prologue
    .line 697
    if-eqz p1, :cond_0

    .line 698
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 699
    new-instance v0, Lcom/android/settings/accounts/ManageAccounts$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccounts$4;-><init>(Lcom/android/settings/accounts/ManageAccounts;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v1, "ActionBarContainer is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized requestOrCancelSyncForEnabledProviders(Z)V
    .locals 2
    .parameter "startSync"

    .prologue
    .line 318
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v1, " ==Sync all== "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mAccounts:[Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccounts;->SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v1, " ==Cancel Sync== "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setIconRunnable(Lcom/android/settings/accounts/ManageAccountPreference;I)Ljava/lang/Runnable;
    .locals 1
    .parameter "accountPref"
    .parameter "syncStatus"

    .prologue
    .line 559
    new-instance v0, Lcom/android/settings/accounts/ManageAccounts$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/accounts/ManageAccounts$2;-><init>(Lcom/android/settings/accounts/ManageAccounts;Lcom/android/settings/accounts/ManageAccountPreference;I)V

    return-object v0
.end method

.method private startAccountSettings(Lcom/android/settings/accounts/ManageAccountPreference;)V
    .locals 14
    .parameter "acctPref"

    .prologue
    const/4 v6, 0x1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccounts;->getAccountPreferenceIntent(Lcom/android/settings/accounts/ManageAccountPreference;)Landroid/content/Intent;

    move-result-object v7

    .line 204
    .local v7, accIntent:Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 206
    :try_start_0
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v1, " ==Open Customize Account Activity == "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v8

    .line 209
    .local v8, e:Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v2, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 215
    .local v11, mutiAccount:[Landroid/accounts/Account;
    array-length v0, v11

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v13, v6

    .line 218
    .local v13, skipToAccount:Z
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 223
    .local v10, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accounts/Util;->checkTwitterHaveFile(Landroid/content/Context;)I

    move-result v12

    .line 225
    .local v12, rid:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.htc.sense.socialnetwork.twitter"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/Util;->isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 228
    .local v9, isPackageEnable:Z
    if-eqz v13, :cond_1

    .line 229
    if-lez v12, :cond_1

    if-eqz v9, :cond_1

    .line 230
    const/4 v13, 0x0

    .line 234
    .end local v9           #isPackageEnable:Z
    .end local v12           #rid:I
    :cond_1
    if-eqz v13, :cond_3

    .line 235
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ==Open AccountSyncSetttings== : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c11cd

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 215
    .end local v10           #label:Ljava/lang/CharSequence;
    .end local v13           #skipToAccount:Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 244
    .restart local v10       #label:Ljava/lang/CharSequence;
    .restart local v13       #skipToAccount:Z
    :cond_3
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ==Open ManageAccountsSettings== : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "account_type"

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "account_label"

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c11b4

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected backToTop()V
    .locals 2

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 711
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v1, "start back to top"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 714
    :cond_0
    return-void
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 21
    .parameter "accounts"

    .prologue
    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 652
    :goto_0
    return-void

    .line 606
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/ManageAccounts;->mAccounts:[Landroid/accounts/Account;

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v10

    .line 610
    .local v10, accountTypes:[Ljava/lang/String;
    move-object v11, v10

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    move v14, v13

    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .local v14, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    aget-object v9, v11, v14

    .line 611
    .local v9, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 613
    .local v8, label:Ljava/lang/CharSequence;
    if-nez v8, :cond_2

    .line 610
    .end local v14           #i$:I
    :cond_1
    :goto_2
    add-int/lit8 v13, v14, 0x1

    .restart local v13       #i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto :goto_1

    .line 616
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/accounts/ManageAccounts;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 618
    .local v6, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    .line 619
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .restart local v6       #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/16 v20, 0x1

    .line 623
    .local v20, showAccount:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccounts;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 624
    const/16 v20, 0x0

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/accounts/ManageAccounts;->mAuthorities:[Ljava/lang/String;

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .end local v14           #i$:I
    .restart local v13       #i$:I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    aget-object v19, v12, v13

    .line 626
    .local v19, requestedAuthority:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 627
    const/16 v20, 0x1

    .line 632
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v19           #requestedAuthority:Ljava/lang/String;
    :cond_4
    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.htc.sense.socialplugins"

    invoke-static {v3, v4}, Lcom/android/settings/accounts/Util;->isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    .line 634
    .local v15, isPackageEnable:Z
    if-eqz v15, :cond_5

    .line 635
    const/16 v20, 0x1

    .line 638
    .end local v15           #isPackageEnable:Z
    :cond_5
    if-eqz v20, :cond_1

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v18

    .line 641
    .local v18, mutiAccount:[Landroid/accounts/Account;
    move-object/from16 v0, v18

    array-length v3, v0

    if-eqz v3, :cond_7

    .line 642
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/accounts/ManageAccounts;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 643
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/settings/accounts/ManageAccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v18, v4

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/accounts/ManageAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;ZLjava/lang/CharSequence;)V

    .line 645
    .local v2, preference:Lcom/android/settings/accounts/ManageAccountPreference;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 625
    .end local v2           #preference:Lcom/android/settings/accounts/ManageAccountPreference;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v18           #mutiAccount:[Landroid/accounts/Account;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v17       #len$:I
    .restart local v19       #requestedAuthority:Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 647
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v19           #requestedAuthority:Ljava/lang/String;
    .restart local v18       #mutiAccount:[Landroid/accounts/Account;
    :cond_7
    sget-object v3, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account type : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mutiAccount length is 0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 651
    .end local v6           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v18           #mutiAccount:[Landroid/accounts/Account;
    .end local v20           #showAccount:Z
    .restart local v14       #i$:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccounts;->onSyncStateUpdated()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 167
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getView()Landroid/view/View;

    move-result-object v4

    .line 169
    .local v4, view:Landroid/view/View;
    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ManageAccounts;->mErrorInfoView:Landroid/view/View;

    .line 170
    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccounts;->mErrorInfoView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authorities"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthorities:[Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 174
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    .line 175
    .local v0, accountSyncTitlleBar:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 176
    .local v2, headerbar:Lcom/htc/widget/ActionBarContainer;
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ManageAccounts;->initBackSettings(Lcom/htc/widget/ActionBarContainer;)V

    .line 178
    .end local v0           #accountSyncTitlleBar:Lcom/htc/widget/ActionBarExt;
    .end local v2           #headerbar:Lcom/htc/widget/ActionBarContainer;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    .line 180
    .local v3, listView:Lcom/htc/widget/HtcListView;
    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccounts;->mDividerController:Lcom/htc/widget/IDividerController;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->updateAuthDescriptions()V

    .line 182
    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccounts;->startActivity(Landroid/content/Intent;)V

    .line 670
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v2, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v2}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 91
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 94
    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccounts;->addPreferencesFromResource(I)V

    .line 96
    const-string v2, "manageAccountsCategory"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccounts;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 97
    const-string v2, "autoSyncToggle"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccounts;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/OptionTogglePreference;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mAutoSyncToggle:Lcom/android/settings/accounts/OptionTogglePreference;

    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .local v1, j:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f04001e

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccounts;->setHasOptionsMenu(Z)V

    .line 105
    new-instance v2, Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;-><init>(Lcom/android/settings/accounts/ManageAccounts;)V

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;

    .line 106
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mFilter:Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mFilter:Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/settings/accounts/Util;->ACTION_AUTO_SYNC_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 271
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 272
    const/4 v3, 0x0

    const v4, 0x204025c

    invoke-interface {p1, v5, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 275
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const v3, 0x7f0c08b8

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 277
    .local v1, syncAllItem:Landroid/view/MenuItem;
    const/4 v3, 0x3

    const v4, 0x2040256

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 279
    .local v2, syncCancel:Landroid/view/MenuItem;
    const v3, 0x7f02005d

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 280
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 282
    const v3, 0x20800a3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 283
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    const/high16 v3, 0x208

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 286
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 153
    if-eqz p2, :cond_0

    .line 154
    const v1, 0x2080001

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 157
    :cond_0
    const v1, 0x7f04009c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 299
    .local v0, itemId:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->onSyncAllClicked()V

    .line 307
    :goto_0
    return v1

    .line 302
    :cond_1
    if-ne v0, v1, :cond_2

    .line 303
    sget-object v2, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v3, " ==Add Account== "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->onAddAccountClicked()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v2, "unRegisterReceiver failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 194
    instance-of v0, p2, Lcom/android/settings/accounts/ManageAccountPreference;

    if-eqz v0, :cond_0

    .line 195
    check-cast p2, Lcom/android/settings/accounts/ManageAccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccounts;->startAccountSettings(Lcom/android/settings/accounts/ManageAccountPreference;)V

    .line 199
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 197
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 292
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 115
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v1, intentFilter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/settings/accounts/Util;->ACTION_AUTO_SYNC_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccounts;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccounts;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccounts$BackgroundReveiver;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v3, "registerReceiver failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 127
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v3, "registerReceiver failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 690
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    .line 675
    sget-boolean v0, Lcom/android/settings/accounts/ManageAccounts;->DEBUG:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 676
    :cond_0
    if-ne p2, v2, :cond_2

    .line 677
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](2101) [FPS][SETTINGS][Scroll ManageAccount][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    if-nez p2, :cond_1

    .line 679
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](2102) [FPS][SETTINGS][Scroll ManageAccount][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 189
    return-void
.end method

.method public onSyncAllClicked()V
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccounts;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 314
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/ManageAccounts$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccounts$1;-><init>(Lcom/android/settings/accounts/ManageAccounts;)V

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccounts$1;->start()V

    goto :goto_0
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/android/settings/accounts/ManageAccounts;->TAG:Ljava/lang/String;

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 265
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
