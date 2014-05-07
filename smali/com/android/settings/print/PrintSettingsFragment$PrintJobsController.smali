.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobsController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 362
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;-><init>(Landroid/content/Context;)V

    .line 364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    .local p2, printJobs:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 452
    :cond_1
    return-void

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const-string v2, "print_jobs_category"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 377
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 379
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    .line 380
    .local v11, printJobCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v11, :cond_1

    .line 381
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/print/PrintJobInfo;

    .line 383
    .local v10, printJob:Landroid/print/PrintJobInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    .line 386
    .local v9, preference:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 387
    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 423
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v13, 0x7f0c10a8

    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    const/4 v15, 0x1

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v9}, Lcom/htc/preference/HtcPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 447
    .local v7, extras:Landroid/os/Bundle;
    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 380
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 393
    .end local v7           #extras:Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_4

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0c10a9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 398
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0c10aa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 405
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0c10ab

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 411
    :pswitch_3
    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_5

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0c10ac

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 416
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0c10aa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 457
    return-void
.end method
