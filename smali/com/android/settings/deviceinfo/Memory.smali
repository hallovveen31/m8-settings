.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "Memory.java"


# static fields
.field private static final MENU_ID_USB:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const v5, 0x7f0c06e8

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    new-instance v5, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    invoke-direct {v5}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/internal/HtcInternalStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportUsbStorage()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;

    invoke-direct {v5, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportCloudStorageGroup()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;-><init>(Landroid/content/Context;Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportAppStorageLocSettings()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v5, 0x20402a5

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v2, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private isMassStorageEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doPlugin()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDisplay()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDisplay()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Response Time (launch Storage)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->launchFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09033c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f09033c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
