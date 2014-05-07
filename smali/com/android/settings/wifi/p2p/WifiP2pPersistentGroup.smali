.class public Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;
.super Lcom/htc/preference/HtcPreference;
.source "WifiP2pPersistentGroup.java"


# instance fields
.field public mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0
    .parameter "context"
    .parameter "group"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 33
    return-void
.end method


# virtual methods
.method getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNetworkId()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 39
    return-void
.end method
