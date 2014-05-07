.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;,
        Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;,
        Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field static final ENABLED_PRINT_SERVICES_SEPARATOR:C = ':'

.field static final EXTRA_ADD_PRINTERS_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

.field static final EXTRA_ADD_PRINTERS_TITLE:Ljava/lang/String; = "EXTRA_ADD_PRINTERS_TITLE"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "EXTRA_CHECKED"

.field static final EXTRA_ENABLE_WARNING_MESSAGE:Ljava/lang/String; = "EXTRA_ENABLE_WARNING_MESSAGE"

.field static final EXTRA_ENABLE_WARNING_TITLE:Ljava/lang/String; = "EXTRA_ENABLE_WARNING_TITLE"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "EXTRA_PREFERENCE_KEY"

.field static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final EXTRA_PRINT_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

.field static final EXTRA_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_SERVICE_COMPONENT_NAME"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_SETTINGS_COMPONENT_NAME"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "EXTRA_SETTINGS_TITLE"

.field static final EXTRA_TITLE:Ljava/lang/String; = "EXTRA_TITLE"

.field private static final LOADER_ID_PRINT_JOBS_LOADER:I = 0x1

.field private static final PRINT_JOBS_CATEGORY:Ljava/lang/String; = "print_jobs_category"

.field private static final PRINT_SERVICES_CATEGORY:Ljava/lang/String; = "print_services_category"


# instance fields
.field private mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 97
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$2;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    .line 460
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/htc/preference/HtcPreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    return-object v0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 274
    .local v1, prereference:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 21

    .prologue
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    const-string v18, "print_services_category"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    if-nez v17, :cond_2

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 189
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.printservice.PrintService"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x84

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 197
    .local v11, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 198
    .local v10, installedServiceCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_4

    .line 199
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 201
    .local v9, installedService:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    .line 204
    .local v12, preference:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 205
    .local v16, title:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v5, componentName:Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v12, v8}, Lcom/htc/preference/HtcPreferenceScreen;->setOrder(I)V

    .line 213
    const-class v17, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 214
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 216
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 217
    .local v14, serviceEnabled:Z
    if-eqz v14, :cond_3

    .line 218
    const v17, 0x7f0c109d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    :goto_2
    invoke-virtual {v12}, Lcom/htc/preference/HtcPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 224
    .local v7, extras:Landroid/os/Bundle;
    const-string v17, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v12}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v17, "EXTRA_CHECKED"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    const-string v17, "EXTRA_TITLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v13

    .line 231
    .local v13, printServiceInfo:Landroid/printservice/PrintServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 233
    .local v4, applicationLabel:Ljava/lang/CharSequence;
    const-string v17, "EXTRA_ENABLE_WARNING_TITLE"

    const v18, 0x7f0c1097

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v17, "EXTRA_ENABLE_WARNING_MESSAGE"

    const v18, 0x7f0c1098

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v13}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v15

    .line 239
    .local v15, settingsClassName:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 240
    const-string v17, "EXTRA_SETTINGS_TITLE"

    const v18, 0x7f0c109b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v17, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-virtual {v13}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, addPrinterClassName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 249
    const-string v17, "EXTRA_ADD_PRINTERS_TITLE"

    const v18, 0x7f0c109c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v17, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_1
    const-string v17, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 198
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 186
    .end local v3           #addPrinterClassName:Ljava/lang/String;
    .end local v4           #applicationLabel:Ljava/lang/CharSequence;
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v6           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v8           #i:I
    .end local v9           #installedService:Landroid/content/pm/ResolveInfo;
    .end local v10           #installedServiceCount:I
    .end local v11           #installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12           #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v13           #printServiceInfo:Landroid/printservice/PrintServiceInfo;
    .end local v14           #serviceEnabled:Z
    .end local v15           #settingsClassName:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    goto/16 :goto_0

    .line 220
    .restart local v5       #componentName:Landroid/content/ComponentName;
    .restart local v6       #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v8       #i:I
    .restart local v9       #installedService:Landroid/content/pm/ResolveInfo;
    .restart local v10       #installedServiceCount:I
    .restart local v11       #installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12       #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v14       #serviceEnabled:Z
    .restart local v16       #title:Ljava/lang/String;
    :cond_3
    const v17, 0x7f0c109e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 261
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v9           #installedService:Landroid/content/pm/ResolveInfo;
    .end local v12           #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v14           #serviceEnabled:Z
    .end local v16           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v17

    if-nez v17, :cond_5

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 264
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 122
    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 124
    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "print_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, searchUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    const v2, 0x7f0c109f

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 162
    .local v0, menuItem:Landroid/view/MenuItem;
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 166
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 147
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 141
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    .local v0, contentRoot:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04004a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, emptyView:Landroid/view/View;
    const v3, 0x7f09001e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 175
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f0c1099

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 178
    return-void
.end method
