.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PaymentSettings"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentSettings;Lcom/android/settings/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 153
    new-instance v0, Lcom/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 117
    .local v0, appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 122
    .end local v0           #appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v1, "PaymentSettings"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 62
    :try_start_0
    new-instance v1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "payment_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, searchUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const v2, 0x7f0c12c4

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 148
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 149
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 151
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400aa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 139
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->refresh()V

    .line 129
    return-void
.end method

.method public refresh()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 72
    const-string v7, "PaymentSettings"

    const-string v8, "refresh"

    invoke-static {v7, v8}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v4

    .line 74
    .local v4, manager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    .line 76
    .local v6, screen:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v7, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v7, :cond_1

    .line 78
    iget-object v7, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v7}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 82
    .local v0, appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v5, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7, v0, p0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V

    .line 83
    .local v5, preference:Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v7, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 85
    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 88
    :cond_0
    const-string v7, "PaymentSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t load banner drawable of service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/nfc/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0           #appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v1           #appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #preference:Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090165

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcEmptyView;

    .line 95
    .local v2, emptyText:Lcom/htc/widget/HtcEmptyView;
    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 96
    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcEmptyView;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 102
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 103
    return-void

    .line 99
    :cond_2
    invoke-virtual {v2, v11}, Lcom/htc/widget/HtcEmptyView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    goto :goto_1
.end method
