.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY_ACCOUNT_LABEL:Ljava/lang/String; = "account_label"

.field public static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final REQUEST_SHOW_SYNC_SETTINGS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountType:Ljava/lang/String;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mAuthorities:[Ljava/lang/String;

.field private mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;

.field private mDateFormat:Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

.field private mDividerController:Lcom/htc/widget/IDividerController;

.field private mErrorInfoView:Landroid/view/View;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFirstAccount:Landroid/accounts/Account;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/accounts/ManageAccountsSettings;->DEBUG:Z

    .line 62
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 550
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$6;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDividerController:Lcom/htc/widget/IDividerController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/ManageAccountsSettings;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/ManageAccountsSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/ManageAccountsSettings;)Ljava/text/DateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accounts/ManageAccountsSettings;Lcom/android/settings/AccountPreference;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->setSummaryRunnable(Lcom/android/settings/AccountPreference;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accounts/ManageAccountsSettings;ILcom/android/settings/AccountPreference;Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getSyncStatusRunnable(ILcom/android/settings/AccountPreference;Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accounts/ManageAccountsSettings;Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getSyncButtonStatueRunnable(Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/view/View;

    return-object v0
.end method

.method private addAuthenticatorSettings()V
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 472
    .local v1, prefs:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.htc.sense.socialnetwork.twitter"

    invoke-static {v2, v3}, Lcom/android/settings/accounts/Util;->isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 475
    .local v0, isPackageEnable:Z
    if-eqz v0, :cond_0

    .line 476
    const-string v2, "com.htc.sense.socialnetwork.twitter"

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 479
    .end local v0           #isPackageEnable:Z
    :cond_0
    if-eqz v1, :cond_1

    .line 480
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 482
    :cond_1
    return-void
.end method

.method private checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    .locals 7
    .parameter "account"
    .parameter "authority"
    .parameter "multiSync"

    .prologue
    const/4 v4, 0x0

    .line 376
    if-eqz p3, :cond_0

    array-length v5, p3

    if-nez v5, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v4

    .line 379
    :cond_1
    array-length v3, p3

    .line 380
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 381
    aget-object v5, p3, v0

    if-eqz v5, :cond_2

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    if-nez v5, :cond_3

    .line 380
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_3
    new-instance v1, Landroid/accounts/Account;

    aget-object v5, p3, v0

    iget-object v5, v5, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v6, p3, v0

    iget-object v6, v6, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .local v1, itemAccount:Landroid/accounts/Account;
    aget-object v5, p3, v0

    iget-object v2, v5, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 385
    .local v2, itemAuthority:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getSyncButtonStatueRunnable(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "anySyncFailed"

    .prologue
    .line 410
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings$4;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Z)V

    return-object v0
.end method

.method private getSyncStatusRunnable(ILcom/android/settings/AccountPreference;Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "syncStatus"
    .parameter "accountPref"
    .parameter "update"

    .prologue
    .line 402
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/accounts/ManageAccountsSettings$3;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Lcom/android/settings/AccountPreference;IZ)V

    return-object v0
.end method

.method private initBackSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 2
    .parameter "actionBarContainer"

    .prologue
    .line 519
    if-eqz p1, :cond_0

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 521
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$5;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const-string v1, "ActionBarContainer is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryRunnable(Lcom/android/settings/AccountPreference;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .parameter "accountPref"
    .parameter "updateTime"

    .prologue
    .line 394
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Lcom/android/settings/AccountPreference;Ljava/lang/String;)V

    return-object v0
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7
    .parameter "acctPref"

    .prologue
    .line 215
    sget-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ==Open AccountSyncSetttings== : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c11cd

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 222
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 486
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 487
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 488
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 489
    const/high16 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 490
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 491
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 494
    :cond_0
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 499
    goto :goto_0

    .line 500
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected backToTop()V
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    sget-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const-string v1, "start back to top"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 468
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v5, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 426
    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 427
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, j:I
    :goto_1
    if-ge v7, v9, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    const v5, 0x7f04001e

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 427
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 432
    :cond_2
    const/4 v7, 0x0

    array-length v11, p1

    .local v11, n:I
    :goto_2
    if-ge v7, v11, :cond_7

    .line 433
    aget-object v2, p1, v7

    .line 435
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 432
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 436
    :cond_4
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 437
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 438
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 439
    const/4 v13, 0x0

    .line 440
    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v10, v6

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_4
    if-ge v8, v10, :cond_5

    aget-object v12, v6, v8

    .line 441
    .local v12, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    const/4 v13, 0x1

    .line 448
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #requestedAuthority:Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_3

    .line 449
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 450
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 452
    .local v0, preference:Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 453
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_3

    .line 454
    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    goto :goto_3

    .line 440
    .end local v0           #preference:Lcom/android/settings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #requestedAuthority:Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 458
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #requestedAuthority:Ljava/lang/String;
    .end local v13           #showAccount:Z
    :cond_7
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_8

    .line 459
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 467
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_0

    .line 465
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->finish()V

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v3

    .line 139
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDateFormat:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 142
    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/view/View;

    .line 143
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "authorities"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 149
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "account_label"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;

    .line 154
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFilter:Landroid/content/IntentFilter;

    .line 155
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFilter:Landroid/content/IntentFilter;

    sget-object v5, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    .line 158
    .local v2, listView:Lcom/htc/widget/HtcListView;
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDividerController:Lcom/htc/widget/IDividerController;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 161
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 505
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 507
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 508
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 509
    .local v0, accPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    .end local v0           #accPref:Lcom/android/settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v4, "account_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    const-string v4, "account_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 97
    :cond_0
    if-nez v1, :cond_1

    .line 98
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SYNC_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, settingsTop:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->finish()V

    .line 103
    .end local v3           #settingsTop:Landroid/content/Intent;
    :cond_1
    new-instance v4, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v4}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 104
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 105
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 106
    const v4, 0x7f060024

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 109
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    .line 110
    .local v0, accountSyncTitlleBar:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 111
    .local v2, headerbar:Lcom/htc/widget/ActionBarContainer;
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->initBackSettings(Lcom/htc/widget/ActionBarContainer;)V

    .line 113
    .end local v0           #accountSyncTitlleBar:Lcom/htc/widget/ActionBarExt;
    .end local v2           #headerbar:Lcom/htc/widget/ActionBarContainer;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    const v1, 0x2080001

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 128
    :cond_0
    const v1, 0x7f04009c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onDestroy()V

    .line 202
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const-string v2, "unRegisterReceiver failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 206
    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 207
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 211
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 209
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccount:Landroid/accounts/Account;

    .line 168
    if-eqz v0, :cond_1

    const-string v3, "account_label"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundReceiver:Lcom/android/settings/accounts/ManageAccountsSettings$BackgroundReveiver;

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    return-void

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 172
    .local v2, label:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    goto :goto_0

    .line 177
    .end local v2           #label:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const-string v4, "registerReceiver failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 197
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;->start()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
