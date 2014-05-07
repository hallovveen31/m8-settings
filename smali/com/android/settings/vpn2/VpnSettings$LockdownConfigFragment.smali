.class public Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockdownConfigFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 472
    return-void
.end method

.method static synthetic access$000(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    invoke-static {p0, p1}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method private static getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "keyStore"
    .parameter "key"

    .prologue
    .line 506
    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 507
    .local v0, value:[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 6
    .parameter "keyStore"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 511
    const-string v3, "LOCKDOWN_VPN"

    invoke-static {p1, v3}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, lockdownKey:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    #calls: Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    invoke-static {p1, v3}, Lcom/android/settings/vpn2/VpnSettings;->access$100(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    .line 514
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    .line 515
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    const v4, 0x7f0c1277

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iput v5, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    .line 518
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 519
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    .line 522
    :cond_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    .end local v2           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;-><init>()V

    .line 502
    .local v0, dialog:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 529
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 531
    .local v3, keyStore:Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    .line 533
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 536
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0c1275

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 539
    const v6, 0x7f040112

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 540
    .local v5, view:Landroid/view/View;
    const v6, 0x7f090041

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    .line 541
    .local v4, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v4, v8, v9}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 542
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 543
    new-instance v6, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-direct {v6, v1, v7}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 544
    iget v6, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    invoke-virtual {v4, v6, v8}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 545
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 547
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;

    invoke-direct {v7, p0, v4, v3, v1}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;-><init>(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;Lcom/htc/widget/HtcListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 572
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    return-object v6
.end method
