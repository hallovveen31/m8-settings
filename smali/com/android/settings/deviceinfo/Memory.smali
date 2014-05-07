.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "Memory.java"


# static fields
.field private static final MENU_ID_USB:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    .line 114
    .local v3, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 115
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v5, 0x7f0c06e8

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 116
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 120
    new-instance v5, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    invoke-direct {v5}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    new-instance v5, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 137
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 143
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportUsbStorage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 149
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportCloudStorageGroup()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    new-instance v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;-><init>(Landroid/content/Context;Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V

    .line 153
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Ljava/lang/Object;)V

    .line 158
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportAppStorageLocSettings()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 160
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x20402a5

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 161
    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setOrder(I)V

    .line 162
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    new-instance v2, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 165
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Ljava/lang/Object;)V

    .line 168
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_5
    return-void
.end method

.method private isMassStorageEnabled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doPlugin()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->requestHandlers()V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 77
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    return-void
.end method

.method public onDisplay()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDisplay()V

    .line 62
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Response Time (launch Storage)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->launchFinish(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0e87

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 99
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x7f09033c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 82
    const v1, 0x7f09033c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 83
    .local v0, usb:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
