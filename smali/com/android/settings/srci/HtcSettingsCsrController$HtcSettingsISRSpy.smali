.class public Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;
.super Ljava/lang/Object;
.source "HtcSettingsCsrController.java"

# interfaces
.implements Lcom/htc/lib1/autotest/middleware/ISRSpy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/srci/HtcSettingsCsrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcSettingsISRSpy"
.end annotation


# instance fields
.field private m_strMethodList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/srci/HtcSettingsCsrController;


# direct methods
.method public constructor <init>(Lcom/android/settings/srci/HtcSettingsCsrController;)V
    .locals 8

    iput-object p1, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v7, v5

    new-array v6, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->m_strMethodList:[Ljava/lang/String;

    return-void
.end method

.method private handleDisableable(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v5, "android"

    const/16 v6, 0x40

    invoke-virtual {p1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->isThisASystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[initDisableButton()] app signed with the system cert or launcher app in the system"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-boolean v5, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isEnabledFor3LM(ZLjava/lang/String;)Z
    .locals 6

    const-string v3, "DeviceManager3LM"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, p1

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, p2}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 p1, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.checkAppUninstallPolicies(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, p2}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.isPackageDisabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, p2}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v2, p1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isEnabledForDevicePolicy(ZLjava/lang/String;)Z
    .locals 7

    iget-object v4, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2240

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mDpm.packageHasActiveAdmins()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, p1

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInBlockedSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->prepareBlockedSet(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;
    invoke-static {v0}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$300(Lcom/android/settings/srci/HtcSettingsCsrController;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isThisASystemPackage(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/16 v6, 0x2240

    :try_start_1
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when retrieving package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private prepareBlockedSet(Landroid/content/Context;)V
    .locals 10

    const-string v0, "Settings"

    const-string v2, "list"

    const-string v1, "blocked_applications"

    iget-object v7, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;
    invoke-static {v7}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$300(Lcom/android/settings/srci/HtcSettingsCsrController;)Ljava/util/TreeSet;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    #setter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;
    invoke-static {v7, v8}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$302(Lcom/android/settings/srci/HtcSettingsCsrController;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    const-string v7, "Settings"

    const-string v8, "list"

    invoke-static {p1, v7, v8}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v3

    const-string v7, "blocked_applications"

    invoke-virtual {v3, v7}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;
    invoke-static {v7}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$300(Lcom/android/settings/srci/HtcSettingsCsrController;)Ljava/util/TreeSet;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "the blocked set: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;
    invoke-static {v7}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$300(Lcom/android/settings/srci/HtcSettingsCsrController;)Ljava/util/TreeSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getColorPercentageByName()V
    .locals 0

    return-void
.end method

.method public getMethodList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->m_strMethodList:[Ljava/lang/String;

    return-object v0
.end method

.method public getSystemFontSize()I
    .locals 3

    iget-object v2, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontsize:I

    return v1
.end method

.method public getSystemFontSizePixel()I
    .locals 5

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    iget-object v4, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v4, 0x20500eb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3
.end method

.method public isPackageCanBeDisabled(Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    invoke-direct {p0, v5, v0}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->handleDisableable(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    :cond_2
    sget-object v6, Lcom/android/settings/srci/HtcSettingsCsrController$1;->$SwitchMap$com$android$settings$framework$content$pm$HtcApplicationInfo$ConfiguredButtonState:[I

    invoke-static {v0}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->getConfiguredButton(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_2
    sget v6, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_DISABLED:I

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v6, v7

    sget v7, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_DISABLED:I

    if-ne v6, v7, :cond_4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[initDisableButton()] configuredExtFlag: DISABLE_BUTTON_DISABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v3, Lcom/android/settings/applications/HtcUnsupportDisableSet;

    iget-object v6, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/applications/HtcUnsupportDisableSet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/android/settings/applications/HtcUnsupportDisableSet;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[initDisableButton()] mDisableButtonSet.contains(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v6, "com.threelm.dm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[initDisableButton()] packageName.startsWith(com.threelm.dm): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v2, p1}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->isEnabledFor3LM(ZLjava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->isEnabledForDevicePolicy(ZLjava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    iget-object v6, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->isInBlockedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[initDisableButton()] HtcPackageBlocker.isInBlockedSet(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getBlockedRemovalAP()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[initDisableButton()] grey out for MDM policy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[initDisableButton()] configuredButton: DISABLE_BUTTON_DISABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[initDisableButton()] configuredButton: DISABLE_BUTTON_ENABLED"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-isPackageEnable(), context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;->this$0:Lcom/android/settings/srci/HtcSettingsCsrController;

    #getter for: Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/srci/HtcSettingsCsrController;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-isPackageEnable(), enableState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v2, v0

    goto :goto_0
.end method
