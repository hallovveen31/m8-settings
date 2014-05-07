.class abstract Lcom/amap/mapapi/route/Route$e;
.super Lcom/amap/mapapi/route/Route$d;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Lcom/amap/mapapi/route/Route;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/amap/mapapi/route/Route$e;->c:Lcom/amap/mapapi/route/Route;

    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$d;-><init>(Lcom/amap/mapapi/route/Route;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 699
    sget-object v0, Lcom/amap/mapapi/core/r;->m:Landroid/graphics/Paint;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 705
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 706
    const-string v1, ""

    .line 708
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$e;->c:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v6

    move v2, v3

    move v4, v3

    .line 710
    :goto_0
    if-ge v2, v6, :cond_1

    .line 711
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$e;->c:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/DriveWalkSegment;

    .line 712
    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getLength()I

    move-result v7

    add-int/2addr v4, v7

    .line 713
    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 715
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    const-string v1, " -> "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    :cond_0
    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 727
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    :cond_2
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5927\u7ea6"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public b(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 739
    invoke-super {p0, p1}, Lcom/amap/mapapi/route/Route$d;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_0

    .line 754
    :goto_0
    return-object v0

    .line 744
    :cond_0
    const-string v1, ""

    .line 745
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$e;->c:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/DriveWalkSegment;

    .line 746
    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "\u5927\u7ea6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getLength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Landroid/text/Spanned;
    .locals 6
    .parameter

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/amap/mapapi/route/Route$d;->c(I)Landroid/text/Spanned;

    move-result-object v0

    .line 760
    if-eqz v0, :cond_0

    .line 780
    :goto_0
    return-object v0

    .line 764
    :cond_0
    const-string v0, ""

    .line 765
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$e;->c:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/DriveWalkSegment;

    .line 766
    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    :goto_1
    const-string v2, "#808080"

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/mapapi/core/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "\u5927\u7ea6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getLength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_0

    .line 772
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/DriveWalkSegment;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
