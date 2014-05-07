.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;,
        Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;
    }
.end annotation


# static fields
.field private static final ACCOUNT_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final CANT_DO_ONETIME_SYNC_DIALOG:I = 0x66

.field private static final FAILED_REMOVAL_DIALOG:I = 0x65

.field private static final INTENT_EXTRA:Ljava/lang/String; = "intent_extra"

.field private static final KEY_DATA_SYNC:Ljava/lang/String; = "dataAndSynchronization"

.field private static final KEY_REFRESH_WHEN_OPEN:Ljava/lang/String; = "refresh_when_open"

.field private static final KEY_SYNC_INTERVAL:Ljava/lang/String; = "sync_interval"

.field private static final MENU_REMOVE_ACCOUNT_ID:I = 0x3

.field private static final MENU_SYNC_CANCEL_ID:I = 0x2

.field private static final MENU_SYNC_NOW_ID:I = 0x1

.field private static final SYNC_STATE:Ljava/lang/String; = "state"

.field private static final SYNC_STATE_CHANGED_INTENT:Ljava/lang/String; = "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountRemoveable:Ljava/lang/String;

.field private mAccounts:[Landroid/accounts/Account;

.field private mAccountsyncAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBackgroundReceiver:Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/lang/String;

.field private mDividerController:Lcom/htc/widget/IDividerController;

.field private mEmptView:Lcom/htc/widget/HtcEmptyView;

.field private mErrorInfoView:Landroid/view/View;

.field private mExtraBundle:Landroid/os/Bundle;

.field private mFilter:Landroid/content/IntentFilter;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSyncing:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mPluinPackageName:Ljava/lang/String;

.field private mProviderIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field private mRemoveFalse:Z

.field private mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

.field private mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

.field private mSyncStateChangedIntent:Landroid/content/Intent;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUserId:Lcom/htc/widget/HtcListItem2LineText;

.field mutex:Ljava/lang/Object;

.field private queryHandler:Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mIsSyncing:Z

    .line 126
    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountRemoveable:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mutex:Ljava/lang/Object;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mLabel:Ljava/lang/CharSequence;

    .line 1009
    new-instance v0, Lcom/android/settings/accounts/AccountSyncSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountSyncSettings$4;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDividerController:Lcom/htc/widget/IDividerController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/AccountSyncSettings;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->removeAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountSyncSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/accounts/AccountSyncSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->setFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v5, 0x0

    .line 307
    new-instance v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 309
    .local v0, item:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v0, v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 311
    .local v1, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 315
    .local v2, providerLabel:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    sget-object v4, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v0, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 557
    sget-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v1, " Press Cancel Sync "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 560
    return-void
.end method

.method private getAccountPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "accountType"

    .prologue
    .line 539
    const/4 v2, 0x0

    .line 542
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v3, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 543
    .local v0, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v0           #desc:Landroid/accounts/AuthenticatorDescription;
    :goto_0
    return-object v2

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v3, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No resource for account type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 913
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 914
    .local v4, sec:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 915
    const v5, 0x7f0c04af

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 936
    .end local v4           #sec:I
    .end local p1
    :goto_0
    return-object p1

    .line 916
    .restart local v4       #sec:I
    .restart local p1
    :cond_0
    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 917
    const v5, 0x7f0c04b0

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 918
    :cond_1
    const/4 v5, -0x3

    if-ne v4, v5, :cond_2

    .line 919
    const v5, 0x7f0c04b1

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 921
    :cond_2
    div-int/lit8 v3, v4, 0x3c

    .line 922
    .local v3, min:I
    div-int/lit8 v2, v3, 0x3c

    .line 923
    .local v2, hr:I
    div-int/lit8 v0, v2, 0x18

    .line 924
    .local v0, day:I
    if-ne v0, v6, :cond_3

    .line 925
    const v5, 0x7f0c04b6

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 926
    :cond_3
    if-lez v2, :cond_5

    .line 927
    if-ne v2, v6, :cond_4

    .line 928
    const v5, 0x7f0c04b2

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 930
    :cond_4
    const v5, 0x7f0c04b3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 931
    :cond_5
    if-ne v3, v6, :cond_6

    .line 932
    const v5, 0x7f0c04b4

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 934
    :cond_6
    const v5, 0x7f0c04b5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 935
    .end local v0           #day:I
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #sec:I
    :catch_0
    move-exception v1

    .line 936
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private initBackSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 2
    .parameter "actionBarContainer"

    .prologue
    .line 978
    if-eqz p1, :cond_0

    .line 979
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 980
    new-instance v0, Lcom/android/settings/accounts/AccountSyncSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountSyncSettings$3;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    :goto_0
    return-void

    .line 986
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v1, "ActionBarContainer is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 600
    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    const/4 v2, 0x1

    .line 604
    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeAccount()V
    .locals 4

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/android/settings/accounts/AccountSyncSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountSyncSettings$2;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 477
    return-void
.end method

.method private removeAccountDialog()V
    .locals 5

    .prologue
    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 407
    sget-object v2, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Remove account : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c11d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, dialogMessage:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c11ce

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x2040256

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c11ce

    new-instance v4, Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v0           #dialogMessage:Ljava/lang/String;
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 589
    if-eqz p3, :cond_0

    .line 590
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 591
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 596
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 8
    .parameter "startSync"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 565
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 567
    .local v3, pref:Landroid/preference/Preference;
    instance-of v6, v3, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v6, :cond_1

    .line 565
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 570
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 571
    .local v5, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 577
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_4

    .line 578
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncAdapterType;

    .line 580
    .local v4, syncAdapter:Landroid/content/SyncAdapterType;
    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 581
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 585
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #syncAdapter:Landroid/content/SyncAdapterType;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 586
    return-void
.end method

.method private setFeedsState()V
    .locals 31

    .prologue
    .line 615
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 616
    .local v10, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v9

    .line 617
    .local v9, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v22, 0x0

    .line 618
    .local v22, syncIsFailing:Z
    const/16 v20, 0x0

    .line 621
    .local v20, sync:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 623
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .local v8, count:I
    :goto_0
    if-ge v11, v8, :cond_12

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 625
    .local v16, pref:Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 623
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v23, v16

    .line 628
    check-cast v23, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 630
    .local v23, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, authority:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 633
    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v17

    .line 634
    .local v17, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 635
    .local v21, syncEnabled:Z
    if-nez v17, :cond_7

    const/4 v5, 0x0

    .line 636
    .local v5, authorityIsPending:Z
    :goto_2
    if-nez v17, :cond_8

    const/4 v12, 0x0

    .line 638
    .local v12, initialSync:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 639
    .local v3, activelySyncing:Z
    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_9

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    const/4 v13, 0x1

    .line 643
    .local v13, lastSyncFailed:Z
    :goto_4
    if-nez v21, :cond_1

    const/4 v13, 0x0

    .line 644
    :cond_1
    if-eqz v13, :cond_2

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 645
    const/16 v22, 0x1

    .line 647
    :cond_2
    sget-object v27, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const/16 v28, 0x2

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 648
    sget-object v27, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Update sync status: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " active = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " pend ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_3
    or-int v20, v20, v3

    .line 653
    or-int v20, v20, v5

    .line 654
    if-nez v17, :cond_a

    const-wide/16 v18, 0x0

    .line 655
    .local v18, successEndTime:J
    :goto_5
    if-nez v21, :cond_b

    .line 656
    const v27, 0x7f0c11bd

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(I)V

    .line 671
    :cond_4
    :goto_6
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v24

    .line 673
    .local v24, syncState:I
    if-eqz v3, :cond_e

    if-ltz v24, :cond_e

    if-nez v12, :cond_e

    const/16 v27, 0x1

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 675
    if-eqz v5, :cond_f

    if-ltz v24, :cond_f

    if-nez v12, :cond_f

    const/16 v27, 0x1

    :goto_8
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 677
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 678
    const-string v27, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 680
    .local v7, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v14

    .line 681
    .local v14, masterSyncAutomatically:Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 682
    .local v6, backgroundDataEnabled:Z
    if-eqz v14, :cond_5

    if-nez v6, :cond_10

    :cond_5
    const/4 v15, 0x1

    .line 683
    .local v15, oneTimeSyncMode:Z
    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 684
    if-nez v15, :cond_6

    if-eqz v21, :cond_11

    :cond_6
    const/16 v27, 0x1

    :goto_a
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 635
    .end local v3           #activelySyncing:Z
    .end local v5           #authorityIsPending:Z
    .end local v6           #backgroundDataEnabled:Z
    .end local v7           #connManager:Landroid/net/ConnectivityManager;
    .end local v12           #initialSync:Z
    .end local v13           #lastSyncFailed:Z
    .end local v14           #masterSyncAutomatically:Z
    .end local v15           #oneTimeSyncMode:Z
    .end local v18           #successEndTime:J
    .end local v24           #syncState:I
    :cond_7
    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 636
    .restart local v5       #authorityIsPending:Z
    :cond_8
    move-object/from16 v0, v17

    iget-boolean v12, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 639
    .restart local v3       #activelySyncing:Z
    .restart local v12       #initialSync:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 654
    .restart local v13       #lastSyncFailed:Z
    :cond_a
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    goto :goto_5

    .line 657
    .restart local v18       #successEndTime:J
    :cond_b
    if-eqz v3, :cond_c

    .line 658
    const v27, 0x7f0c11c0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(I)V

    goto :goto_6

    .line 659
    :cond_c
    const-wide/16 v27, 0x0

    cmp-long v27, v18, v27

    if-eqz v27, :cond_4

    .line 660
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 661
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mDateFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v10}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getFormattedDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v10}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getFormattedTime(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 663
    .local v25, timeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/Util;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 664
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    .line 666
    :cond_d
    move-object/from16 v26, v25

    .line 667
    .local v26, upperTime:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c11bf

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v26, v29, v30

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 673
    .end local v25           #timeString:Ljava/lang/String;
    .end local v26           #upperTime:Ljava/lang/String;
    .restart local v24       #syncState:I
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 675
    :cond_f
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 682
    .restart local v6       #backgroundDataEnabled:Z
    .restart local v7       #connManager:Landroid/net/ConnectivityManager;
    .restart local v14       #masterSyncAutomatically:Z
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 684
    .restart local v15       #oneTimeSyncMode:Z
    :cond_11
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 686
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #activelySyncing:Z
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #authorityIsPending:Z
    .end local v6           #backgroundDataEnabled:Z
    .end local v7           #connManager:Landroid/net/ConnectivityManager;
    .end local v12           #initialSync:Z
    .end local v13           #lastSyncFailed:Z
    .end local v14           #masterSyncAutomatically:Z
    .end local v15           #oneTimeSyncMode:Z
    .end local v16           #pref:Landroid/preference/Preference;
    .end local v17           #status:Landroid/content/SyncStatusInfo;
    .end local v18           #successEndTime:J
    .end local v21           #syncEnabled:Z
    .end local v23           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .end local v24           #syncState:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v22, :cond_14

    const/16 v27, 0x0

    :goto_b
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mIsSyncing:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 688
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/accounts/AccountSyncSettings;->mIsSyncing:Z

    .line 690
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 691
    return-void

    .line 686
    :cond_14
    const/16 v27, 0x8

    goto :goto_b
.end method

.method private setFromCursor(Landroid/database/Cursor;)V
    .locals 22
    .parameter "c"

    .prologue
    .line 828
    const-string v19, "refresh_when_open"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v11

    .line 830
    .local v11, refresh:I
    const-string v19, "plugin_pkg_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 832
    .local v10, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    .line 834
    :try_start_0
    const-string v19, "update_secs_res_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 836
    .local v14, resName:Ljava/lang/String;
    const-string v19, "sync_interval"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 838
    .local v8, interval:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 841
    .local v12, res:Landroid/content/res/Resources;
    if-ltz v11, :cond_0

    .line 842
    new-instance v9, Lcom/android/settings/accounts/OptionCheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 843
    .local v9, item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setPersistent(Z)V

    .line 844
    const v19, 0x7f0c04a9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setTitle(I)V

    .line 845
    const v19, 0x7f0c04aa

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setSummary(I)V

    .line 846
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setChecked(Z)V

    .line 847
    const-string v19, "refresh_when_open"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 848
    const v19, 0x7f0c04aa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 849
    .local v16, summary:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v9           #item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    .end local v16           #summary:Ljava/lang/String;
    :cond_0
    const-string v19, "update_intent_action"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 857
    .local v15, strIntent:Ljava/lang/String;
    if-nez v15, :cond_4

    .line 858
    new-instance v19, Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setPersistent(Z)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0c04ab

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setDialogTitle(I)V

    .line 861
    const-string v19, "array"

    move-object/from16 v0, v19

    invoke-virtual {v12, v14, v0, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 862
    .local v13, resId:I
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 863
    .local v6, entryValues:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/String;

    .line 864
    .local v5, entries:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 865
    aget-object v19, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getStrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v7

    .line 864
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 846
    .end local v5           #entries:[Ljava/lang/String;
    .end local v6           #entryValues:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v13           #resId:I
    .end local v15           #strIntent:Ljava/lang/String;
    .restart local v9       #item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 867
    .end local v9           #item:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    .restart local v5       #entries:[Ljava/lang/String;
    .restart local v6       #entryValues:[Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v13       #resId:I
    .restart local v15       #strIntent:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    const-string v20, "sync_interval"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setKey(Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setValue(Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0c04ab

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setTitle(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 903
    .end local v5           #entries:[Ljava/lang/String;
    .end local v6           #entryValues:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #interval:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #strIntent:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v19

    if-nez v19, :cond_5

    .line 905
    :goto_3
    return-void

    .line 877
    .restart local v8       #interval:Ljava/lang/String;
    .restart local v12       #res:Landroid/content/res/Resources;
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #strIntent:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .line 879
    .local v17, updateIntent:Landroid/content/Intent;
    const/16 v19, 0x0

    :try_start_1
    move/from16 v0, v19

    invoke-static {v15, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 883
    :goto_4
    if-eqz v17, :cond_3

    .line 884
    :try_start_2
    new-instance v18, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 885
    .local v18, updateItem:Landroid/preference/Preference;
    const v19, 0x7f0400e9

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 886
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 887
    const-string v19, "sync_interval"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 889
    const v19, 0x7f0c04ab

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    .line 890
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/accounts/AccountSyncSettings;->getStrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 891
    const-string v19, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 897
    .end local v8           #interval:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #strIntent:Ljava/lang/String;
    .end local v17           #updateIntent:Landroid/content/Intent;
    .end local v18           #updateItem:Landroid/preference/Preference;
    :catch_0
    move-exception v3

    .line 899
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 900
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 901
    .local v4, e2:Landroid/content/res/Resources$NotFoundException;
    sget-object v19, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 904
    .end local v4           #e2:Landroid/content/res/Resources$NotFoundException;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    goto/16 :goto_3

    .line 880
    .restart local v8       #interval:Ljava/lang/String;
    .restart local v12       #res:Landroid/content/res/Resources;
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #strIntent:Ljava/lang/String;
    .restart local v17       #updateIntent:Landroid/content/Intent;
    :catch_2
    move-exception v19

    goto/16 :goto_4
.end method

.method private startSyncForEnabledProviders()V
    .locals 2

    .prologue
    .line 551
    sget-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v1, " Press Sync now "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 554
    return-void
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 703
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 705
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 706
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 708
    .local v1, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v9

    .local v7, n:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 709
    aget-object v8, v9, v4

    .line 710
    .local v8, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 711
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 712
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 713
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_0
    sget-object v11, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 717
    sget-object v11, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onAccountUpdated: added authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to accountType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1
    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 724
    :cond_2
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 728
    .end local v8           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_4

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 728
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 731
    :cond_4
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 733
    const/4 v4, 0x0

    array-length v7, p1

    :goto_3
    if-ge v4, v7, :cond_a

    .line 734
    aget-object v0, p1, v4

    .line 735
    .local v0, account:Landroid/accounts/Account;
    sget-object v11, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 736
    sget-object v11, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "looking for sync adapters that match account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_5
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 739
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_9

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 740
    :cond_6
    const/4 v5, 0x0

    .local v5, j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, m:I
    :goto_4
    if-ge v5, v6, :cond_9

    .line 741
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 743
    .local v3, authority:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 744
    .local v10, syncState:I
    sget-object v11, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 745
    sget-object v11, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  found authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_7
    if-lez v10, :cond_8

    .line 748
    invoke-direct {p0, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 740
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 733
    .end local v3           #authority:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #m:I
    .end local v10           #syncState:I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 754
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 755
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_5
    if-ge v4, v7, :cond_b

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 755
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 758
    :cond_b
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected backToTop()V
    .locals 2

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 992
    sget-object v0, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v1, "start back to top"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 995
    :cond_0
    return-void
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 3
    .parameter "rootView"

    .prologue
    .line 198
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 200
    const v1, 0x7f090003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v1, 0x7f090051

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Lcom/htc/widget/HtcListItem2LineText;

    .line 204
    const v1, 0x7f090050

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 205
    const v1, 0x7f09013e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEmptyView;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mEmptView:Lcom/htc/widget/HtcEmptyView;

    .line 207
    const v1, 0x7f09004f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 208
    .local v0, listItem:Lcom/htc/widget/HtcListItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 209
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 695
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 696
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 697
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    .line 698
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 700
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDateFormat:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 221
    sget-object v3, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v4, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 226
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v5, "CanRemove"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountRemoveable:Ljava/lang/String;

    .line 230
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mLabel:Ljava/lang/CharSequence;

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    .line 233
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mLabel:Ljava/lang/CharSequence;

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_3
    const/4 v2, 0x0

    .line 240
    .local v2, resId:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "common_app_bkg"

    const v5, 0x2080001

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 244
    :cond_4
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mEmptView:Lcom/htc/widget/HtcEmptyView;

    if-eqz v3, :cond_6

    .line 245
    if-lez v2, :cond_5

    .line 246
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mEmptView:Lcom/htc/widget/HtcEmptyView;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcEmptyView;->setBackgroundResource(I)V

    .line 248
    :cond_5
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mEmptView:Lcom/htc/widget/HtcEmptyView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEmptyView;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mEmptView:Lcom/htc/widget/HtcEmptyView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 252
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 253
    .local v1, listView:Lcom/htc/widget/HtcListView;
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDividerController:Lcom/htc/widget/IDividerController;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    .line 255
    new-instance v3, Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mBackgroundReceiver:Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;

    .line 256
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mFilter:Landroid/content/IntentFilter;

    .line 257
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mFilter:Landroid/content/IntentFilter;

    sget-object v4, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 765
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 767
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.htc.sync.provider.weather"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.htc.newsreader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.htc.stock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.htc.showme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 778
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 781
    const-string v0, "dataAndSynchronization"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v3, 0x7f04001e

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 783
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 783
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 775
    .end local v8           #i:I
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    .restart local v8       #i:I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAddPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 787
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->queryHandler:Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;

    if-nez v0, :cond_4

    .line 788
    new-instance v0, Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->queryHandler:Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->queryHandler:Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;

    sget-object v3, Lcom/htc/sphere/sync/SyncSettings;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "refresh_when_open"

    aput-object v5, v4, v9

    const-string v5, "plugin_pkg_name"

    aput-object v5, v4, v1

    const-string v5, "account_name"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "update_secs_res_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "update_intent_action"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "sync_interval"

    aput-object v6, v4, v5

    const-string v5, "account_type=? AND (account_name is NULL OR account_name = ?)"

    new-array v6, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/accounts/AccountSyncSettings$AccountQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .end local v8           #i:I
    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 970
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 971
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 161
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    .line 162
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    .line 163
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v5

    .line 164
    .local v5, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v5

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 165
    aget-object v4, v5, v2

    .line 166
    .local v4, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountsyncAdapters:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v4           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    new-instance v6, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v6}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 174
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 175
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 176
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 179
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    .line 180
    .local v0, accountSyncTitlleBar:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 181
    .local v1, headerbar:Lcom/htc/widget/ActionBarContainer;
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->initBackSettings(Lcom/htc/widget/ActionBarContainer;)V

    .line 183
    .end local v0           #accountSyncTitlleBar:Lcom/htc/widget/ActionBarExt;
    .end local v1           #headerbar:Lcom/htc/widget/ActionBarContainer;
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 143
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c11ce

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c11d3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 149
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c11d6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c11d7

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 329
    const/4 v3, 0x1

    const v4, 0x7f0c11c3

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02005d

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 332
    .local v2, syncNow:Landroid/view/MenuItem;
    const/4 v3, 0x2

    const v4, 0x2040256

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20800a3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 335
    .local v1, syncCancel:Landroid/view/MenuItem;
    const/4 v3, 0x3

    const v4, 0x2040272

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20800a6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 339
    .local v0, removeAccount:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 341
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 343
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 346
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 347
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 188
    if-eqz p2, :cond_0

    .line 189
    const v1, 0x2080001

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 191
    :cond_0
    const v1, 0x7f040098

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 194
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 400
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 391
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 397
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->removeAccountDialog()V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mBackgroundReceiver:Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v2, "unRegisterReceiver failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 942
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sync_interval"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 943
    check-cast v1, Lcom/android/settings/accounts/OptionListPreference;

    .line 944
    .local v1, lpref:Lcom/android/settings/accounts/OptionListPreference;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/accounts/OptionListPreference;->setValue(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v1}, Lcom/android/settings/accounts/OptionListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/accounts/OptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 946
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 947
    .local v2, newInterval:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/htc/sphere/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 950
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    if-eqz v4, :cond_0

    .line 951
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setValue(Ljava/lang/String;)V

    .line 952
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncItem:Lcom/android/settings/accounts/HTCAccountSyncListPreference;

    invoke-virtual {v1}, Lcom/android/settings/accounts/OptionListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 955
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.settings.accountsync.ACTION_SYNC_SCHEDULE_CHANGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v0, changeIntent:Landroid/content/Intent;
    const-string v4, "account_type"

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const-string v4, "sync_interval"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 959
    const-string v4, "refresh_when_open"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 961
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 965
    .end local v0           #changeIntent:Landroid/content/Intent;
    .end local v1           #lpref:Lcom/android/settings/accounts/OptionListPreference;
    .end local v2           #newInterval:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    .line 481
    instance-of v9, p2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v9, :cond_6

    move-object v7, p2

    .line 482
    check-cast v7, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 483
    .local v7, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 485
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 486
    .local v5, syncAutomatically:Z
    invoke-virtual {v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 487
    invoke-direct {p0, v0, v1, v8}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 534
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v5           #syncAutomatically:Z
    .end local v7           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    :goto_0
    return v8

    .line 489
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v5       #syncAutomatically:Z
    .restart local v7       #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_1
    invoke-virtual {v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v6

    .line 490
    .local v6, syncOn:Z
    move v4, v5

    .line 491
    .local v4, oldSyncState:Z
    if-eq v6, v4, :cond_0

    .line 493
    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 497
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v6, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0, v0, v1, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 501
    :cond_3
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 502
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/accounts/AccountSyncSettings;->getAccountPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    .line 505
    :cond_4
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 506
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    const-string v10, "type"

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    const-string v10, "authority"

    invoke-virtual {v7}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    const-string v10, "state"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    const-string v10, "intent_extra"

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mExtraBundle:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 510
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mSyncStateChangedIntent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    :cond_5
    sget-object v9, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send to package : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #oldSyncState:Z
    .end local v5           #syncAutomatically:Z
    .end local v6           #syncOn:Z
    .end local v7           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_6
    instance-of v9, p2, Lcom/android/settings/accounts/OptionCheckBoxPreference;

    if-eqz v9, :cond_7

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "refresh_when_open"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v3, p2

    .line 519
    check-cast v3, Lcom/android/settings/accounts/OptionCheckBoxPreference;

    .line 520
    .local v3, chechkPrefs:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/htc/sphere/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 523
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.htc.settings.accountsync.ACTION_SYNC_SCHEDULE_CHANGE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v2, changeIntent:Landroid/content/Intent;
    const-string v9, "account_type"

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v9, "refresh_when_open"

    invoke-virtual {v3}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    sget-object v9, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "account type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v9, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send to package : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mPluinPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v9, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is checked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settings/accounts/OptionCheckBoxPreference;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 534
    .end local v2           #changeIntent:Landroid/content/Intent;
    .end local v3           #chechkPrefs:Lcom/android/settings/accounts/OptionCheckBoxPreference;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 351
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 352
    const/4 v1, 0x1

    .line 354
    .local v1, disableSyncButton:Z
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-boolean v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mIsSyncing:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_0
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mIsSyncing:Z

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 359
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 361
    .local v3, pref:Landroid/preference/Preference;
    instance-of v5, v3, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v5, :cond_3

    move-object v4, v3

    .line 362
    check-cast v4, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 363
    .local v4, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v4}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    const/4 v1, 0x0

    .line 370
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    if-eqz v1, :cond_6

    .line 371
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v1, :cond_4

    move v5, v6

    :goto_2
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 372
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_5

    :goto_3
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    :goto_4
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountRemoveable:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 380
    sget-object v5, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This account can be remove or not = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountRemoveable:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v5, "false"

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccountRemoveable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 385
    :cond_1
    return-void

    .end local v0           #count:I
    .end local v2           #i:I
    :cond_2
    move v5, v7

    .line 354
    goto :goto_0

    .line 359
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #pref:Landroid/preference/Preference;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #pref:Landroid/preference/Preference;
    :cond_4
    move v5, v7

    .line 371
    goto :goto_2

    :cond_5
    move v6, v7

    .line 373
    goto :goto_3

    .line 375
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v1, :cond_7

    :goto_5
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    move v6, v7

    goto :goto_5
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 264
    .local v2, activity:Landroid/app/Activity;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mBackgroundReceiver:Lcom/android/settings/accounts/AccountSyncSettings$BackgroundReveiver;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v6, "com.htc.permission.APP_PLATFORM"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z

    if-nez v4, :cond_0

    .line 269
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 273
    :cond_0
    const/4 v1, 0x0

    .line 274
    .local v1, accounts:[Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 280
    :goto_1
    const/4 v0, 0x0

    .line 281
    .local v0, account:Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 282
    aget-object v0, v1, v8

    .line 284
    :cond_1
    if-nez v0, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 288
    :cond_2
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4, p0, v9, v8}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 290
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 292
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 293
    return-void

    .line 265
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v5, "registerReceiver failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    :cond_3
    sget-object v4, Lcom/android/settings/accounts/AccountSyncSettings;->TAG:Ljava/lang/String;

    const-string v5, "[AccountSyncSettings] The Account is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    goto :goto_0
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
