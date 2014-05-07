.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;,
        Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_ADD_CALLED:Ljava/lang/String; = "AddAccountCalled"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private htcFontScale:F

.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountCalled:Z

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mBackgroundReceiver:Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field protected mIsFontChanged:Z

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeId:I

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/accounts/ChooseAccountActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountCalled:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->htcFontScale:F

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFontChanged:Z

    .line 91
    iput v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mThemeId:I

    .line 426
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$2;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 507
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountCalled:Z

    .line 474
    return-void
.end method

.method private addAccountPrefQ(Ljava/lang/String;)Z
    .locals 10
    .parameter "accountType"

    .prologue
    .line 335
    sget-object v7, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAccountPrefQ accountType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v3, 0x1

    .line 338
    .local v3, addAccountPref:Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 340
    .local v2, accounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_3

    .line 341
    sget-object v7, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accounts.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object v4, v2

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v4, v5

    .line 343
    .local v1, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "MultipleLogin"

    invoke-virtual {v7, v1, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, MLongin:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 346
    sget-object v7, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MLongin="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v7, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 358
    .end local v0           #MLongin:Ljava/lang/String;
    .end local v1           #account:Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    :goto_1
    return v3

    .line 350
    .restart local v0       #MLongin:Ljava/lang/String;
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v4       #arr$:[Landroid/accounts/Account;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_1
    const/4 v3, 0x0

    .line 351
    goto :goto_1

    .line 342
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    .end local v0           #MLongin:Ljava/lang/String;
    .end local v1           #account:Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initBackSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 2
    .parameter "actionBarContainer"

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 483
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$3;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "ActionBarContainer is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 23

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 263
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_7

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 265
    .local v6, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 269
    .local v19, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 270
    .local v5, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 271
    .local v7, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_5

    if-eqz v5, :cond_5

    .line 272
    const/4 v7, 0x0

    .line 273
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v15, v0, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v15

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 275
    const/4 v7, 0x1

    .line 282
    .end local v15           #k:I
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 284
    const/4 v7, 0x0

    .line 286
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccountPrefQ(Ljava/lang/String;)Z

    move-result v8

    .line 291
    .local v8, addAccountPref_extra:Z
    const-string v20, "com.twitter.android.auth.login"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 292
    const-string v20, "com.htc.sense.socialnetwork.twitter"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/accounts/Util;->isPackageEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    .line 293
    .local v14, isPackageEnable:Z
    if-eqz v14, :cond_2

    .line 294
    const/4 v7, 0x1

    .line 297
    .end local v14           #isPackageEnable:Z
    :cond_2
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 273
    .end local v8           #addAccountPref_extra:Z
    .restart local v15       #k:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 279
    .end local v15           #k:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_0

    if-nez v5, :cond_0

    .line 280
    const/4 v7, 0x0

    goto :goto_2

    .line 300
    .restart local v8       #addAccountPref_extra:Z
    :cond_6
    sget-object v20, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 301
    sget-object v20, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skipped pref "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": has no authority we need"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 306
    .end local v5           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #accountType:Ljava/lang/String;
    .end local v7           #addAccountPref:Z
    .end local v8           #addAccountPref_extra:Z
    .end local v19           #providerName:Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 332
    :cond_8
    :goto_4
    return-void

    .line 309
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_b

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 314
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 315
    .local v18, pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 316
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v17, Lcom/android/settings/accounts/ProviderPreference;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v20

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 318
    .local v17, p:Lcom/android/settings/accounts/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 321
    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #p:Lcom/android/settings/accounts/ProviderPreference;
    .end local v18           #pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    :cond_b
    sget-object v20, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 322
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v10, auths:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_c

    aget-object v4, v9, v13

    .line 324
    .local v4, a:Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 327
    .end local v4           #a:Ljava/lang/String;
    :cond_c
    sget-object v20, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No providers found for authorities: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v10           #auths:Ljava/lang/StringBuilder;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_d
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_4
.end method

.method private setThemeSettings()V
    .locals 2

    .prologue
    .line 180
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    .line 181
    .local v0, themeId:I
    iget v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mThemeId:I

    if-eq v1, v0, :cond_0

    .line 182
    iput v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mThemeId:I

    .line 184
    :cond_0
    iget v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mThemeId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setTheme(I)V

    .line 185
    return-void
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 253
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    .line 258
    return-void
.end method


# virtual methods
.method protected backToTop()V
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 502
    sget-object v0, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "start back to top"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 363
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 364
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 365
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 366
    aget-object v3, v4, v1

    .line 367
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 368
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    sget-object v5, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    sget-object v5, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 392
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 393
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 402
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 394
    :catch_0
    move-exception v2

    .line 396
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 399
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v4, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 415
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 416
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 423
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 420
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v4, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    :try_start_0
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "applyHtcFontscale failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 115
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->setThemeSettings()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->htcFontScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 123
    .local v17, win:Landroid/view/Window;
    if-eqz v17, :cond_0

    .line 125
    const/high16 v18, 0x400

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 127
    new-instance v18, Landroid/graphics/drawable/ColorDrawable;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/accounts/Util;->getThemeColor(Landroid/content/Context;)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    const-string v18, "AddAccountCalled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountCalled:Z

    .line 132
    sget-object v18, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v19, "restored"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    const v18, 0x7f040099

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 136
    const v18, 0x7f090141

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 137
    .local v16, view:Landroid/view/View;
    if-eqz v16, :cond_2

    .line 138
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 142
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 143
    .local v12, listView:Landroid/widget/ListView;
    if-eqz v12, :cond_3

    .line 144
    const v18, 0x2080001

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 146
    :cond_3
    const v18, 0x7f060002

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "authorities"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "account_types"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, accountTypesFilter:[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 152
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 153
    move-object v7, v5

    .local v7, arr$:[Ljava/lang/String;
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_4

    aget-object v4, v7, v10

    .line 154
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 118
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountTypesFilter:[Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #listView:Landroid/widget/ListView;
    .end local v16           #view:Landroid/view/View;
    .end local v17           #win:Landroid/view/Window;
    :catch_0
    move-exception v8

    .line 119
    .local v8, e:Ljava/lang/Exception;
    sget-object v18, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v19, "applyHtcFontscale failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 157
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #accountTypesFilter:[Ljava/lang/String;
    .restart local v12       #listView:Landroid/widget/ListView;
    .restart local v16       #view:Landroid/view/View;
    .restart local v17       #win:Landroid/view/Window;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 158
    new-instance v15, Lcom/htc/widget/ActionBarExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    .line 159
    .local v15, uploadTitlleBar:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v15}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v9

    .line 160
    .local v9, headerbar:Lcom/htc/widget/ActionBarContainer;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->initBackSettings(Lcom/htc/widget/ActionBarContainer;)V

    .line 161
    new-instance v6, Lcom/htc/widget/ActionBarDropDown;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    .line 162
    .local v6, actionDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-virtual {v9, v6}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 163
    const v18, 0x7f0c11cf

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 172
    .end local v6           #actionDropDown:Lcom/htc/widget/ActionBarDropDown;
    .end local v9           #headerbar:Lcom/htc/widget/ActionBarContainer;
    .end local v15           #uploadTitlleBar:Lcom/htc/widget/ActionBarExt;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 173
    new-instance v18, Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->mBackgroundReceiver:Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;

    .line 174
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accounts/ChooseAccountActivity;->mFilter:Landroid/content/IntentFilter;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFilter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    .line 177
    return-void

    .line 165
    :cond_5
    const v18, 0x1020016

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 166
    .local v13, title:Landroid/widget/TextView;
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const v18, 0x20800f7

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 168
    const/16 v18, 0xa

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    const v18, 0x1020271

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 170
    .local v14, titleDivider:Landroid/view/View;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mBackgroundReceiver:Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "unRegisterReceiver failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 459
    instance-of v2, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 460
    check-cast v1, Lcom/android/settings/accounts/ProviderPreference;

    .line 461
    .local v1, pref:Lcom/android/settings/accounts/ProviderPreference;
    invoke-virtual {v1}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, accountType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 464
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #pref:Lcom/android/settings/accounts/ProviderPreference;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 191
    iget-boolean v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountCalled:Z

    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v1, 0x0

    .line 199
    .local v1, isReCreated:Z
    :try_start_0
    iget v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->htcFontScale:F

    invoke-static {p0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFontChanged:Z

    .line 200
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    .line 201
    .local v2, themeId:I
    iget v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mThemeId:I

    if-ne v2, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFontChanged:Z

    if-eqz v6, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 202
    :goto_1
    if-eqz v1, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 204
    .local v4, window:Landroid/view/Window;
    if-eqz v4, :cond_6

    .line 205
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 206
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 207
    new-instance v5, Lcom/android/settings/accounts/ChooseAccountActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$1;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v2           #themeId:I
    .end local v3           #view:Landroid/view/View;
    .end local v4           #window:Landroid/view/Window;
    :cond_3
    :goto_2
    if-nez v1, :cond_0

    .line 229
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mBackgroundReceiver:Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/settings/accounts/ChooseAccountActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v6, "registerReceiver failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #themeId:I
    :cond_4
    move v1, v5

    .line 201
    goto :goto_1

    .line 214
    .restart local v3       #view:Landroid/view/View;
    .restart local v4       #window:Landroid/view/Window;
    :cond_5
    const/4 v1, 0x0

    .line 215
    :try_start_2
    sget-object v5, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v6, "getDecorView is null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 222
    .end local v2           #themeId:I
    .end local v3           #view:Landroid/view/View;
    .end local v4           #window:Landroid/view/Window;
    :catch_1
    move-exception v0

    .line 223
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 224
    sget-object v5, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v6, "checkHtcFontscaleChanged failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 218
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #themeId:I
    .restart local v4       #window:Landroid/view/Window;
    :cond_6
    const/4 v1, 0x0

    .line 219
    :try_start_3
    sget-object v5, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v6, "getWindow is null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 446
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    sget-object v0, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accounts/ChooseAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-void
.end method
