.class public final Lcom/android/settings/vpn2/VpnConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VpnConfigReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnConfigReceiver"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnConfigReceiver;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private addVpn(Lcom/htc/app/admin/VpnConfigInfo;)Z
    .locals 6
    .parameter "vpnInfo"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    const-string v3, "VpnConfigReceiver"

    const-string v4, "addVpn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnConfigReceiver;->requireKeyStore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    :goto_0
    return v1

    .line 108
    :cond_1
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getConfigId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getVpnName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getVpnType()I

    move-result v3

    iput v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 111
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getServerAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getDnsServers()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getSearchDomains()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getRoutes()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getPPPencryption()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 118
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getL2tpSecret()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getIpsecIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->gsetIPSecPreSharedkey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getIpsecUserCert()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getIpsecCaCert()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 124
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 127
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnConfigReceiver;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    goto/16 :goto_0
.end method

.method private deleteVpn(Lcom/htc/app/admin/VpnConfigInfo;)Z
    .locals 3
    .parameter "vpnInfo"

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "VpnConfigReceiver"

    const-string v1, "deleteVpn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnConfigReceiver;->requireKeyStore()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnConfigReceiver;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getConfigId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private getVpn(Lcom/htc/app/admin/VpnConfigInfo;)Lcom/android/internal/net/VpnProfile;
    .locals 4
    .parameter "vpnInfo"

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "VpnConfigReceiver"

    const-string v1, "getVpn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnConfigReceiver;->requireKeyStore()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getConfigId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnConfigReceiver;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/app/admin/VpnConfigInfo;->getConfigId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    goto :goto_0
.end method

.method private requireKeyStore()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnConfigReceiver;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_1

    .line 151
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "VpnConfigReceiver"

    const-string v1, "Need to unlock KeyStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.htc.admin.action.DPM_SET_VPN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 33
    const-string v8, "VpnConfigReceiver"

    const-string v9, "received com.htc.admin.action.DPM_SET_VPN (INTENT_ACTION_DPM_SET_VPN)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 36
    .local v1, devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    const-string v8, "com.htc.admin.extra.REQUEST"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 37
    .local v3, request:I
    const-string v8, "com.htc.admin.extra.VPN_CONFIG"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/htc/app/admin/VpnConfigInfo;

    .line 40
    .local v7, vpnInfo:Lcom/htc/app/admin/VpnConfigInfo;
    packed-switch v3, :pswitch_data_0

    .line 101
    .end local v1           #devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    .end local v3           #request:I
    .end local v7           #vpnInfo:Lcom/htc/app/admin/VpnConfigInfo;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v1       #devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    .restart local v3       #request:I
    .restart local v7       #vpnInfo:Lcom/htc/app/admin/VpnConfigInfo;
    :pswitch_0
    const/4 v4, 0x5

    .line 44
    .local v4, resultCode:I
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/VpnConfigReceiver;->addVpn(Lcom/htc/app/admin/VpnConfigInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 45
    const/16 v4, -0x191

    .line 47
    :cond_1
    const/4 v8, 0x5

    invoke-interface {v1, v8, v4, v10}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 55
    .end local v4           #resultCode:I
    :pswitch_1
    const/4 v4, 0x6

    .line 56
    .restart local v4       #resultCode:I
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/VpnConfigReceiver;->deleteVpn(Lcom/htc/app/admin/VpnConfigInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 57
    const/16 v4, -0x194

    .line 59
    :cond_2
    const/4 v8, 0x6

    invoke-interface {v1, v8, v4, v10}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 67
    .end local v4           #resultCode:I
    :pswitch_2
    const/4 v4, 0x7

    .line 68
    .restart local v4       #resultCode:I
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/VpnConfigReceiver;->getVpn(Lcom/htc/app/admin/VpnConfigInfo;)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 69
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    const/4 v5, 0x0

    .line 70
    .local v5, retVpnInfo:Lcom/htc/app/admin/VpnConfigInfo;
    if-eqz v2, :cond_3

    .line 71
    new-instance v5, Lcom/htc/app/admin/VpnConfigInfo;

    .end local v5           #retVpnInfo:Lcom/htc/app/admin/VpnConfigInfo;
    invoke-direct {v5}, Lcom/htc/app/admin/VpnConfigInfo;-><init>()V

    .line 72
    .restart local v5       #retVpnInfo:Lcom/htc/app/admin/VpnConfigInfo;
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setConfigId(Ljava/lang/String;)V

    .line 73
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setVpnName(Ljava/lang/String;)V

    .line 74
    iget v8, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setVpnType(I)V

    .line 75
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setServerAddress(Ljava/lang/String;)V

    .line 76
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setUsername(Ljava/lang/String;)V

    .line 77
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setPassword(Ljava/lang/String;)V

    .line 78
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setDnsServers(Ljava/lang/String;)V

    .line 79
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setSearchDomains(Ljava/lang/String;)V

    .line 80
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setRoutes(Ljava/lang/String;)V

    .line 81
    iget-boolean v8, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setPPPencryption(Z)V

    .line 82
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setL2tpSecret(Ljava/lang/String;)V

    .line 83
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setIpsecIdentifier(Ljava/lang/String;)V

    .line 84
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setIPSecPreSharedkey(Ljava/lang/String;)V

    .line 85
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setIpsecUserCert(Ljava/lang/String;)V

    .line 86
    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/htc/app/admin/VpnConfigInfo;->setIpsecCaCert(Ljava/lang/String;)V

    .line 91
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.htc.admin.action.DPM_SET_VPN"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, sendIntent:Landroid/content/Intent;
    const-string v8, "com.htc.admin.extra.VPN_CONFIG"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const/4 v8, 0x7

    invoke-interface {v1, v8, v4, v6}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 88
    .end local v6           #sendIntent:Landroid/content/Intent;
    :cond_3
    const/16 v4, -0x193

    goto :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
