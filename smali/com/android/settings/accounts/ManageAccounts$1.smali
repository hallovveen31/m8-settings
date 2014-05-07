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
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v28

    monitor-enter v28

    .line 476
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v23

    .line 478
    .local v23, syncInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v15, v0, [Landroid/content/SyncInfo;

    .line 479
    .local v15, multiSync:[Landroid/content/SyncInfo;
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 481
    const/4 v5, 0x0

    .line 482
    .local v5, anySyncFailed:Z
    const/16 v20, 0x0

    .line 485
    .local v20, sync:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v21

    .line 487
    .local v21, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 488
    .local v26, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, k:I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 489
    aget-object v18, v21, v13

    .line 490
    .local v18, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 491
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 494
    .end local v18           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .local v9, count:I
    :goto_1
    if-ge v11, v9, :cond_b

    .line 495
    const/16 v17, 0x0

    .line 497
    .local v17, pref:Landroid/preference/Preference;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_2

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->access$000(Lcom/android/settings/accounts/ManageAccounts;)Landroid/preference/PreferenceCategory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 504
    :cond_2
    :try_start_2
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/accounts/ManageAccountPreference;

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 494
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 500
    :catch_0
    move-exception v10

    .line 501
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 502
    monitor-exit v28

    .line 554
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v17           #pref:Landroid/preference/Preference;
    :goto_3
    return-void

    .line 508
    .restart local v17       #pref:Landroid/preference/Preference;
    :cond_4
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/settings/accounts/ManageAccountPreference;

    move-object v3, v0

    .line 509
    .local v3, accountPref:Lcom/android/settings/accounts/ManageAccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/accounts/ManageAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 510
    .local v2, account:Landroid/accounts/Account;
    const/16 v24, 0x0

    .line 511
    .local v24, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/accounts/ManageAccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 512
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_a

    .line 513
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 514
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v19

    .line 516
    .local v19, status:Landroid/content/SyncStatusInfo;
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

    .line 521
    .local v22, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 523
    .local v8, authorityIsPending:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #calls: Lcom/android/settings/accounts/ManageAccounts;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    invoke-static {v0, v2, v7, v15}, Lcom/android/settings/accounts/ManageAccounts;->access$100(Lcom/android/settings/accounts/ManageAccounts;Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v4

    .line 525
    .local v4, activelySyncing:Z
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

    .line 529
    .local v14, lastSyncFailed:Z
    :goto_6
    if-eqz v14, :cond_6

    if-nez v4, :cond_6

    if-nez v8, :cond_6

    .line 531
    const/4 v5, 0x1

    .line 532
    const/16 v24, 0x1

    .line 534
    :cond_6
    or-int v20, v20, v4

    .line 536
    const/16 v25, 0x0

    .line 537
    .local v25, syncStatus:I
    if-eqz v24, :cond_7

    .line 538
    const/16 v25, 0x2

    .line 540
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

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

    .line 553
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/accounts/ManageAccountPreference;
    .end local v4           #activelySyncing:Z
    .end local v5           #anySyncFailed:Z
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v9           #count:I
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #k:I
    .end local v14           #lastSyncFailed:Z
    .end local v15           #multiSync:[Landroid/content/SyncInfo;
    .end local v16           #n:I
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v19           #status:Landroid/content/SyncStatusInfo;
    .end local v20           #sync:Z
    .end local v21           #syncAdapters:[Landroid/content/SyncAdapterType;
    .end local v22           #syncEnabled:Z
    .end local v23           #syncInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v24           #syncIsFailing:Z
    .end local v25           #syncStatus:I
    .end local v26           #userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v27

    .line 516
    .restart local v2       #account:Landroid/accounts/Account;
    .restart local v3       #accountPref:Lcom/android/settings/accounts/ManageAccountPreference;
    .restart local v5       #anySyncFailed:Z
    .restart local v6       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #authority:Ljava/lang/String;
    .restart local v9       #count:I
    .restart local v11       #i:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #k:I
    .restart local v15       #multiSync:[Landroid/content/SyncInfo;
    .restart local v16       #n:I
    .restart local v17       #pref:Landroid/preference/Preference;
    .restart local v19       #status:Landroid/content/SyncStatusInfo;
    .restart local v20       #sync:Z
    .restart local v21       #syncAdapters:[Landroid/content/SyncAdapterType;
    .restart local v23       #syncInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v24       #syncIsFailing:Z
    .restart local v26       #userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    const/16 v22, 0x0

    goto :goto_5

    .line 525
    .restart local v4       #activelySyncing:Z
    .restart local v8       #authorityIsPending:Z
    .restart local v22       #syncEnabled:Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    .line 545
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v19           #status:Landroid/content/SyncStatusInfo;
    .end local v22           #syncEnabled:Z
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

    .line 546
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

    .line 550
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/accounts/ManageAccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v24           #syncIsFailing:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v27

    if-eqz v27, :cond_c

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccounts$1;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

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

    .line 553
    :cond_c
    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method
