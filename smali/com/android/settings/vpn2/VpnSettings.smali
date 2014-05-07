.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final TAG:Ljava/lang/String; = "VpnSettings"

.field private static final TAG_LOCKDOWN:Ljava/lang/String; = "lockdown"


# instance fields
.field private mDialog:Lcom/android/settings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 79
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 81
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 467
    return-void
.end method

.method static synthetic access$100(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c1279

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .parameter "keyStore"
    .parameter "excludeTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 578
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, keys:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 580
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 581
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 583
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 584
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 368
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 370
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 371
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 373
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 375
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 377
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 378
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 379
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 387
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 382
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v7, -0x1

    .line 243
    if-ne p2, v7, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 246
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 250
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 251
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_1

    .line 252
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    .line 262
    :goto_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v2           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    :goto_1
    return-void

    .line 255
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .restart local v2       #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    new-instance v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 256
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 257
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v4, :cond_0

    .line 295
    const-string v3, "VpnSettings"

    const-string v4, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return v2

    .line 299
    :cond_0
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 300
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-nez v1, :cond_1

    .line 301
    const-string v3, "VpnSettings"

    const-string v4, "onContextItemSelected() is called but no preference is found"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    new-instance v2, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    invoke-direct {v2, v4, p0, v5, v3}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 308
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    move v2, v3

    .line 310
    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 314
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 318
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "LOCKDOWN_VPN"

    #calls: Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->access$000(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, lockdownKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v4, "LOCKDOWN_VPN"

    invoke-virtual {v2, v4}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    :cond_2
    move v2, v3

    .line 323
    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c1273
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 98
    const v1, 0x7f060051

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 103
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 108
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f0c1274

    const v5, 0x7f0c1273

    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 275
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 282
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    instance-of v2, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 283
    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 284
    .local v1, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 285
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 286
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 287
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 113
    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 239
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 131
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    .local v0, millis:J
    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_1

    .line 135
    :cond_0
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 137
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 142
    .end local v0           #millis:J
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings/vpn2/VpnSettings;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x7f09033d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnDialog;->dismiss()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 233
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 330
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local p1
    :goto_0
    return v7

    .line 335
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 336
    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 337
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 340
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v3

    .line 346
    :cond_1
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 356
    .end local v2           #profile:Lcom/android/internal/net/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 349
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    .local v0, millis:J
    :goto_2
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    .line 353
    :cond_3
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 121
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const v0, 0x7f09033e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 124
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 163
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 167
    .local v3, pickLockdown:Z
    if-eqz v3, :cond_0

    .line 168
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 172
    :cond_0
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v8

    if-nez v8, :cond_3

    .line 173
    iget-boolean v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_2

    .line 175
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 180
    :goto_0
    iget-boolean v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    iput-boolean v7, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 217
    :goto_1
    return-void

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    .line 185
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 190
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 193
    .local v1, group:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v9, v7, [I

    invoke-static {v8, v9}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v6

    .line 195
    .local v6, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 196
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    new-instance v4, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v4, p0, v0, v5}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 197
    .local v4, pref:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v4, p0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 198
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 204
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #group:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pref:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    .end local v6           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v8, :cond_5

    .line 205
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v8, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 206
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v8}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    .line 210
    :cond_5
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v8, :cond_6

    .line 211
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 213
    :cond_6
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 154
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 156
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method
