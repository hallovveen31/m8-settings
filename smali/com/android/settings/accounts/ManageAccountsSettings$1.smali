.class Lcom/android/settings/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Thread;
.source "ManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Landroid/content/SyncInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v24

    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v20, v0

    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    aget-object v22, v24, v15

    invoke-virtual/range {v22 .. v22}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v36

    if-eqz v36, :cond_0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    :goto_1
    if-ge v13, v10, :cond_14

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    :cond_2
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v36, v0

    if-nez v36, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move-object/from16 v4, v21

    check-cast v4, Lcom/android/settings/AccountPreference;

    invoke-virtual {v4}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    const/16 v25, 0x0

    const-wide/16 v16, 0x0

    const/16 v28, 0x0

    invoke-virtual {v4}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v7

    const/16 v30, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v23

    invoke-static {v3, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v36

    if-eqz v36, :cond_8

    invoke-static {v3, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v36

    if-lez v36, :cond_8

    const/16 v26, 0x1

    :goto_5
    invoke-static {v3, v8}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    #calls: Lcom/android/settings/accounts/ManageAccountsSettings;->checkActive(Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z
    invoke-static {v0, v3, v8, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$000(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/accounts/Account;Ljava/lang/String;[Landroid/content/SyncInfo;)Z

    move-result v5

    if-eqz v23, :cond_9

    if-eqz v26, :cond_9

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-eqz v36, :cond_9

    const/16 v36, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_6
    if-eqz v18, :cond_6

    if-nez v5, :cond_6

    if-nez v9, :cond_6

    const/16 v28, 0x1

    const/4 v6, 0x1

    :cond_6
    or-int v30, v30, v5

    if-eqz v23, :cond_7

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v36, v0

    cmp-long v36, v16, v36

    if-gez v36, :cond_7

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v16, v0

    :cond_7
    if-eqz v26, :cond_a

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    const/16 v36, 0x1

    :goto_7
    add-int v25, v25, v36

    goto/16 :goto_4

    :cond_8
    const/16 v26, 0x0

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    goto :goto_6

    :cond_a
    const/16 v36, 0x0

    goto :goto_7

    :cond_b
    invoke-static {}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$100()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x2

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_c

    invoke-static {}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$100()Ljava/lang/String;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "no syncadapters found for "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v29, 0x1

    const/16 v32, 0x0

    if-eqz v28, :cond_e

    const/16 v29, 0x2

    const/16 v32, 0x1

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    if-eqz v36, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v29

    move/from16 v2, v32

    #calls: Lcom/android/settings/accounts/ManageAccountsSettings;->getSyncStatusRunnable(ILcom/android/settings/AccountPreference;Z)Ljava/lang/Runnable;
    invoke-static {v0, v1, v4, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$500(Lcom/android/settings/accounts/ManageAccountsSettings;ILcom/android/settings/AccountPreference;Z)Ljava/lang/Runnable;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_e
    if-nez v25, :cond_f

    const/16 v29, 0x1

    const/16 v32, 0x1

    goto :goto_8

    :cond_f
    if-lez v25, :cond_13

    if-eqz v30, :cond_10

    const/16 v29, 0x3

    const/16 v32, 0x1

    goto :goto_8

    :cond_10
    const/16 v29, 0x0

    const/16 v32, 0x1

    const-wide/16 v36, 0x0

    cmp-long v36, v16, v36

    if-lez v36, :cond_d

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v37, v0

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mDateFormat:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$200(Lcom/android/settings/accounts/ManageAccountsSettings;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v0, v11}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getFormattedDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v37, v0

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mTimeFormat:Ljava/text/DateFormat;
    invoke-static/range {v37 .. v37}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$300(Lcom/android/settings/accounts/ManageAccountsSettings;)Ljava/text/DateFormat;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v0, v11}, Lcom/android/settings/accounts/DateTimeFormatUtil;->getFormattedTime(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    if-eqz v36, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/accounts/Util;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    :cond_11
    move-object/from16 v34, v31

    const-string v33, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    if-eqz v36, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0c11bf

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v34, v38, v39

    invoke-virtual/range {v36 .. v38}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    if-eqz v36, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    #calls: Lcom/android/settings/accounts/ManageAccountsSettings;->setSummaryRunnable(Lcom/android/settings/AccountPreference;Ljava/lang/String;)Ljava/lang/Runnable;
    invoke-static {v0, v4, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$400(Lcom/android/settings/accounts/ManageAccountsSettings;Lcom/android/settings/AccountPreference;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_13
    const/16 v29, 0x1

    const/16 v32, 0x1

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    if-eqz v36, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->isFinishing()Z

    move-result v36

    if-nez v36, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    #calls: Lcom/android/settings/accounts/ManageAccountsSettings;->getSyncButtonStatueRunnable(Z)Ljava/lang/Runnable;
    invoke-static {v0, v6}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$600(Lcom/android/settings/accounts/ManageAccountsSettings;Z)Ljava/lang/Runnable;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3
.end method
