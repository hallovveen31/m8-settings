.class public Lcom/android/settings/applications/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpEntry"
.end annotation


# instance fields
.field private final mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

.field private final mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgOps:Landroid/app/AppOpsManager$PackageOps;

.field private final mSwitchOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchOrder:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V
    .locals 1
    .parameter "pkg"
    .parameter "op"
    .parameter "app"
    .parameter "switchOrder"

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    .line 471
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    .line 472
    iput-object p3, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 473
    iput p4, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->addOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method

.method private static addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 6
    .parameter
    .parameter "op"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 481
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 482
    .local v1, pos:Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 495
    .end local v1           #pos:Landroid/app/AppOpsManager$OpEntry;
    :goto_1
    return-void

    .line 489
    .restart local v1       #pos:Landroid/app/AppOpsManager$OpEntry;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 490
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v1           #pos:Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 533
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v3

    aget-object v3, p2, v3

    .line 552
    :goto_0
    return-object v3

    .line 538
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 540
    if-lez v2, :cond_1

    .line 541
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/applications/AppOpsState;->getIndexByOp(I)I

    move-result v3

    aget-object v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 552
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 554
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/applications/AppOpsState;->TAG:Ljava/lang/String;

    const-string v4, " ERROR:  Maybe Framework add new OPs, and doesn\'t sync with Settings!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v3, Lcom/android/settings/applications/AppOpsState;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3
.end method


# virtual methods
.method public addOp(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2
    .parameter "op"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->addOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 503
    :cond_0
    return-void
.end method

.method public getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    return-object v0
.end method

.method public getNumOpEntry()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;
    .locals 1
    .parameter "pos"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    return-object v0
.end method

.method public getPackageOps()Landroid/app/AppOpsManager$PackageOps;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    return-object v0
.end method

.method public getSummaryText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "state"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchOrder()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    return v0
.end method

.method public getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "state"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 7
    .parameter "res"
    .parameter "showEmptyText"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const v0, 0x7f0c0fb5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 585
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f0c0fb6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
