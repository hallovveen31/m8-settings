.class Lcom/android/settings/applications/ManageApplicationsFragment$4;
.super Landroid/os/AsyncTask;
.source "ManageApplicationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsFragment;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p5, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1405
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplicationsFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .parameter "params"

    .prologue
    .line 1407
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v12, 0x200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1409
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 1410
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1412
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Enabling notifications: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$nm:Landroid/app/INotificationManager;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    :goto_1
    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing preferred: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_1
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1419
    iget-boolean v11, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_3

    .line 1420
    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Enabling app: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_2
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 1423
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1409
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1432
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v4, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .local v8, prefActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v8, v12}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1435
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 1436
    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_5

    sget-object v12, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing preferred: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_5
    iget-object v12, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1435
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1464
    :cond_6
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v9

    .line 1466
    .local v9, restrictedUids:[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1467
    .local v3, currentUserId:I
    move-object v2, v9

    .local v2, arr$:[I
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v7, :cond_9

    aget v10, v2, v6

    .line 1469
    .local v10, uid:I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v3, :cond_8

    .line 1470
    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing data policy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_7
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1467
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1474
    .end local v10           #uid:I
    :cond_9
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->val$handler:Landroid/os/Handler;

    new-instance v12, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;

    invoke-direct {v12, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment$4;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1484
    const/4 v11, 0x0

    return-object v11

    .line 1414
    .end local v2           #arr$:[I
    .end local v3           #currentUserId:I
    .end local v4           #filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #prefActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v9           #restrictedUids:[I
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v11

    goto/16 :goto_1
.end method
