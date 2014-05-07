.class Lcom/android/settings/accounts/ManageAccounts$1;
.super Ljava/lang/Thread;
.source "ManageAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccounts;->onSyncStateUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccounts;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccounts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v28

    monitor-enter v28

    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v15, v0, [Landroid/content/SyncInfo;

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v20, 0x0

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v21

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v18, v21, v13

    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :goto_1
    if-ge v11, v9, :cond_b

    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    :cond_2
    :try_start_2
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/accounts/ManageAccountPreference;

    move/from16 v27, v0

    if-nez v27, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v28

    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/settings/accounts/ManageAccountPreference;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    const/16 v24, 0x0

    invoke-virtual {v3}, Lcom/android/settings/accounts/ManageAccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v19

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v27

    if-lez v27, :cond_8

    const/16 v22, 0x1

    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/settings/accounts/ManageAccounts;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    invoke-static {v0, v2, v7, v15}, Lcom/android/settings/accounts/ManageAccounts;->access$100(Lcom/android/settings/accounts/ManageAccounts;Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v4

    if-eqz v19, :cond_9

    if-eqz v22, :cond_9

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v27, v29, v31

    if-eqz v27, :cond_9

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v27

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    const/4 v14, 0x1

    :goto_6
    if-eqz v14, :cond_6

    if-nez v4, :cond_6

    if-nez v8, :cond_6

    const/4 v5, 0x1

    const/16 v24, 0x1

    :cond_6
    or-int v20, v20, v4

    const/16 v25, 0x0

    if-eqz v24, :cond_7

    const/16 v25, 0x2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    #calls: Lcom/android/settings/accounts/ManageAccounts;->setIconRunnable(Lcom/android/settings/accounts/ManageAccountPreference;I)Ljava/lang/Runnable;
    invoke-static {v0, v3, v1}, Lcom/android/settings/accounts/ManageAccounts;->access$200(Lcom/android/settings/accounts/ManageAccounts;Lcom/android/settings/accounts/ManageAccountPreference;I)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v27

    :cond_8
    const/16 v22, 0x0

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    :try_start_3
    invoke-static {}, Lcom/android/settings/accounts/ManageAccounts;->access$300()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-static {}, Lcom/android/settings/accounts/ManageAccounts;->access$300()Ljava/lang/String;

    move-result-object v27

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "no syncadapters found for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    #calls: Lcom/android/settings/accounts/ManageAccounts;->getSyncButtonStatueRunnable(ZZ)Ljava/lang/Runnable;
    invoke-static {v0, v5, v1}, Lcom/android/settings/accounts/ManageAccounts;->access$400(Lcom/android/settings/accounts/ManageAccounts;ZZ)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method
