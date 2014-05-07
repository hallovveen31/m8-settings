.class public Lcom/android/settings/framework/activity/HtcHeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcHeaderAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/HtcHeaderAdapter$1;,
        Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;,
        Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/framework/activity/HtcWrapHeader;",
        ">;",
        "Landroid/widget/AbsListView$RecyclerListener;"
    }
.end annotation


# instance fields
.field private final mAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private final mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, wrapHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/HtcWrapHeader;>;"
    const/4 v3, 0x0

    .line 270
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 275
    new-instance v1, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v1           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 276
    .restart local v1       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const-string v2, ">> Settings.HeaderAdapter.<init>"

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 285
    :cond_0
    const/4 v0, 0x0

    .line 287
    .local v0, enablerTimer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$000()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 288
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$100()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 289
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$200()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 291
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$300()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 298
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBoomSoundFeatureFlags;->getBoomSoundSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 299
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$400()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 305
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 306
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$500()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 312
    :goto_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 313
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$600()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 318
    :goto_3
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 319
    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v0           #enablerTimer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 320
    .restart local v0       #enablerTimer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const-string v2, ">> Settings.MobileDataEnabler.<init>"

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 326
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$700()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 331
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$800()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 335
    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 336
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$900()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 344
    :goto_4
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 345
    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 346
    const-string v2, "<< Settings.MobileDataEnabler.<init>"

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 352
    :cond_2
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_3

    .line 353
    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v0           #enablerTimer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 354
    .restart local v0       #enablerTimer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const-string v2, ">> Settings.InfraredEnabler.<init>"

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 360
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$1000()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 364
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_4

    .line 365
    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 366
    const-string v2, "<< Settings.InfraredEnabler.<init>"

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 371
    :cond_4
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_5

    .line 372
    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 373
    const-string v2, "<< Settings.HeaderAdapter.<init>"

    invoke-static {v2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 376
    :cond_5
    return-void

    .line 295
    :cond_6
    iput-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    goto/16 :goto_0

    .line 302
    :cond_7
    iput-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    goto/16 :goto_1

    .line 309
    :cond_8
    iput-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    goto/16 :goto_2

    .line 315
    :cond_9
    iput-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    goto/16 :goto_3

    .line 339
    :cond_a
    iput-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    goto :goto_4
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 772
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 773
    #calls: Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->destroy()V
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->access$1200()V

    .line 774
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 382
    sget-object v1, Lcom/android/settings/framework/activity/HtcHeaderAdapter$1;->$SwitchMap$com$android$settings$framework$activity$HtcWrapHeader$Type:[I

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/HtcWrapHeader;

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 390
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 384
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 433
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 434
    .local v16, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->context:Landroid/content/Context;

    .line 435
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 436
    .local v10, res:Landroid/content/res/Resources;
    const/4 v14, 0x0

    .line 439
    .local v14, typeChanged:Z
    const/4 v15, 0x0

    .line 445
    .local v15, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;

    .line 447
    .local v4, holder:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 448
    const/4 v14, 0x1

    .line 452
    .end local v4           #holder:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    :cond_0
    if-eqz p2, :cond_1

    if-eqz v14, :cond_6

    .line 453
    :cond_1
    new-instance v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/framework/activity/HtcHeaderAdapter;Lcom/android/settings/framework/activity/HtcHeaderAdapter$1;)V

    .line 454
    .restart local v4       #holder:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    .line 455
    sget-object v17, Lcom/android/settings/framework/activity/HtcHeaderAdapter$1;->$SwitchMap$com$android$settings$framework$activity$HtcWrapHeader$Type:[I

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 504
    :goto_0
    invoke-virtual {v15, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 511
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->id:J

    .line 519
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->switch_:Lcom/htc/widget/HtcToggleButtonLight;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->switch_:Lcom/htc/widget/HtcToggleButtonLight;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/framework/widget/HtcToggleButton;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 521
    iget-object v9, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->switch_:Lcom/htc/widget/HtcToggleButtonLight;

    check-cast v9, Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 523
    .local v9, mSwitch:Lcom/android/settings/framework/widget/HtcToggleButton;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    .line 527
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnEnabledChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnEnabledChangeListener;)V

    .line 532
    .end local v9           #mSwitch:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_2
    sget-object v17, Lcom/android/settings/framework/activity/HtcHeaderAdapter$1;->$SwitchMap$com$android$settings$framework$activity$HtcWrapHeader$Type:[I

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1

    .line 643
    :goto_2
    return-object v15

    .line 458
    :pswitch_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 459
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    check-cast v2, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;

    .line 461
    .local v2, cView:Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    .line 466
    :goto_3
    iput-object v2, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 467
    move-object v15, v2

    .line 468
    goto :goto_0

    .line 463
    .end local v2           #cView:Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
    :cond_3
    new-instance v2, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;

    invoke-direct {v2, v3}, Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;-><init>(Landroid/content/Context;)V

    .restart local v2       #cView:Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
    goto :goto_3

    .line 473
    .end local v2           #cView:Lcom/android/settings/framework/widget/HtcPreferenceCategoryView;
    :pswitch_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 474
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    check-cast v11, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 476
    .local v11, siView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    .line 481
    :goto_4
    invoke-virtual {v11}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 482
    invoke-virtual {v11}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 483
    invoke-virtual {v11}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 484
    invoke-virtual {v11}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->switch_:Lcom/htc/widget/HtcToggleButtonLight;

    .line 485
    iput-object v11, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->headerSwitchItem:Landroid/view/View;

    .line 486
    move-object v15, v11

    .line 487
    goto/16 :goto_0

    .line 478
    .end local v11           #siView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    :cond_4
    new-instance v11, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;-><init>(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader$Type;)V

    .restart local v11       #siView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    goto :goto_4

    .line 491
    .end local v11           #siView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    :pswitch_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 492
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    check-cast v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;

    .line 494
    .local v6, iView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->mBufferView:Landroid/view/View;

    .line 498
    :goto_5
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->getIconImageView()Landroid/widget/ImageView;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 499
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 500
    invoke-virtual {v6}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 501
    move-object v15, v6

    goto/16 :goto_0

    .line 496
    .end local v6           #iView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
    :cond_5
    new-instance v6, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;-><init>(Landroid/content/Context;)V

    .restart local v6       #iView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
    goto :goto_5

    .line 506
    .end local v4           #holder:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    .end local v6           #iView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderItemView;
    :cond_6
    move-object/from16 v15, p2

    .line 507
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;

    .restart local v4       #holder:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 534
    :pswitch_3
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 540
    :pswitch_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 541
    .local v7, id:J
    const-wide/32 v17, 0x7f0902fa

    cmp-long v17, v7, v17

    if-nez v17, :cond_a

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    .line 603
    :cond_7
    :goto_6
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 605
    const-wide/32 v17, 0x7f090313

    cmp-long v17, v7, v17

    if-eqz v17, :cond_8

    const-wide/32 v17, 0x7f0902ff

    cmp-long v17, v7, v17

    if-eqz v17, :cond_8

    const-wide/32 v17, 0x7f090315

    cmp-long v17, v7, v17

    if-eqz v17, :cond_8

    const-wide/32 v17, 0x7f090316

    cmp-long v17, v7, v17

    if-eqz v17, :cond_8

    const-wide/32 v17, 0x7f090317

    cmp-long v17, v7, v17

    if-eqz v17, :cond_8

    .line 610
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 611
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    const-string v18, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 620
    .end local v7           #id:J
    :cond_8
    :pswitch_5
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 629
    .local v12, summary:Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f090305

    cmp-long v17, v17, v19

    if-nez v17, :cond_9

    .line 630
    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getMoreSummary(Landroid/content/Context;Lcom/android/settings/framework/activity/HtcWrapHeader;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 635
    :cond_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 636
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 544
    .end local v12           #summary:Ljava/lang/CharSequence;
    .restart local v7       #id:J
    :cond_a
    const-wide/32 v17, 0x7f0902fe

    cmp-long v17, v7, v17

    if-nez v17, :cond_b

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 547
    :cond_b
    const-wide/32 v17, 0x7f090300

    cmp-long v17, v7, v17

    if-nez v17, :cond_c

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 552
    :cond_c
    const-wide/32 v17, 0x7f0902f9

    cmp-long v17, v7, v17

    if-nez v17, :cond_d

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 555
    :cond_d
    const-wide/32 v17, 0x7f0902fd

    cmp-long v17, v7, v17

    if-nez v17, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 561
    :cond_e
    const-wide/32 v17, 0x7f090313

    cmp-long v17, v7, v17

    if-nez v17, :cond_f

    .line 562
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 568
    :cond_f
    const-wide/32 v17, 0x7f090315

    cmp-long v17, v7, v17

    if-nez v17, :cond_10

    .line 569
    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 573
    :cond_10
    const-wide/32 v17, 0x7f090316

    cmp-long v17, v7, v17

    if-nez v17, :cond_11

    .line 574
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBoomSoundFeatureFlags;->getBoomSoundSettingsVisibility()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 581
    :cond_11
    const-wide/32 v17, 0x7f090317

    cmp-long v17, v7, v17

    if-nez v17, :cond_12

    .line 582
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 588
    :cond_12
    const-wide/32 v17, 0x7f0902ff

    cmp-long v17, v7, v17

    if-nez v17, :cond_13

    .line 589
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object v5, v15

    .line 590
    check-cast v5, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    .line 591
    .local v5, htcMiniView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    invoke-virtual {v5}, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v13

    .line 592
    .local v13, toggle:Lcom/android/settings/framework/widget/HtcToggleButton;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setVisibility(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 595
    .end local v5           #htcMiniView:Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;
    .end local v13           #toggle:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_13
    const-wide/32 v17, 0x7f0902fb

    cmp-long v17, v7, v17

    if-nez v17, :cond_7

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    move-object/from16 v18, v0

    move-object/from16 v17, v15

    check-cast v17, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindHeaderView(Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;)V

    goto/16 :goto_6

    .line 639
    .end local v7           #id:J
    .restart local v12       #summary:Ljava/lang/CharSequence;
    :cond_14
    iget-object v0, v4, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 532
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0x28

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    .line 404
    const/4 v0, 0x1

    .line 405
    .local v0, isEnabled:Z
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/HtcWrapHeader;

    .line 406
    .local v1, wrapHeader:Lcom/android/settings/framework/activity/HtcWrapHeader;
    iget-object v2, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f090300

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->isWidgetEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 417
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v3, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->CATEGORY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 411
    :cond_1
    iget-object v2, v1, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v2, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0902fd

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->isWidgetEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 417
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final onActivateEnabler(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 717
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 718
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 721
    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->isSupportVoWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 737
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 741
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBoomSoundFeatureFlags;->getBoomSoundSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 742
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 745
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 749
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 750
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 754
    :cond_6
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v0, :cond_7

    .line 755
    iget-object v0, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 757
    :cond_7
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 672
    instance-of v3, p1, Lcom/android/settings/framework/widget/HtcPreferenceHeaderSwitchItemView;

    if-eqz v3, :cond_1

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;

    .line 674
    .local v2, tag:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    iget-wide v0, v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->id:J

    .line 676
    .local v0, id:J
    const-wide/32 v3, 0x7f0902fa

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    .line 709
    :cond_0
    :goto_0
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;->id:J

    .line 711
    .end local v0           #id:J
    .end local v2           #tag:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    :cond_1
    return-void

    .line 678
    .restart local v0       #id:J
    .restart local v2       #tag:Lcom/android/settings/framework/activity/HtcHeaderAdapter$HeaderViewHolder;
    :cond_2
    const-wide/32 v3, 0x7f0902fe

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 679
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 680
    :cond_3
    const-wide/32 v3, 0x7f090300

    cmp-long v3, v0, v3

    if-nez v3, :cond_4

    .line 681
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 682
    :cond_4
    const-wide/32 v3, 0x7f0902f9

    cmp-long v3, v0, v3

    if-nez v3, :cond_5

    .line 683
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 684
    :cond_5
    const-wide/32 v3, 0x7f0902fd

    cmp-long v3, v0, v3

    if-nez v3, :cond_6

    .line 685
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v3, :cond_0

    .line 686
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 688
    :cond_6
    const-wide/32 v3, 0x7f090313

    cmp-long v3, v0, v3

    if-nez v3, :cond_7

    .line 689
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v3, :cond_0

    .line 690
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 692
    :cond_7
    const-wide/32 v3, 0x7f090315

    cmp-long v3, v0, v3

    if-nez v3, :cond_8

    .line 693
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 696
    :cond_8
    const-wide/32 v3, 0x7f090316

    cmp-long v3, v0, v3

    if-nez v3, :cond_9

    .line 697
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v3, :cond_0

    .line 698
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 700
    :cond_9
    const-wide/32 v3, 0x7f090317

    cmp-long v3, v0, v3

    if-nez v3, :cond_a

    .line 701
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto :goto_0

    .line 704
    :cond_a
    const-wide/32 v3, 0x7f0902ff

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v3, :cond_0

    .line 706
    iget-object v3, p0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->mHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->unbindHeaderView()V

    goto/16 :goto_0
.end method

.method public pause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 769
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 763
    return-void
.end method
