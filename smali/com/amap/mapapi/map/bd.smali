.class Lcom/amap/mapapi/map/bd;
.super Lcom/amap/mapapi/map/c;
.source "VectorMeshServer.java"

# interfaces
.implements Lcom/amap/mapapi/map/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/map/c",
        "<",
        "Lcom/amap/mapapi/map/at$a;",
        "Lcom/amap/mapapi/map/at$a;",
        ">;",
        "Lcom/amap/mapapi/map/bf;"
    }
.end annotation


# instance fields
.field private g:Lcom/amap/mapapi/map/u;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/c;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    .line 473
    new-instance v0, Lcom/amap/mapapi/map/u;

    invoke-direct {v0}, Lcom/amap/mapapi/map/u;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/bd;->g:Lcom/amap/mapapi/map/u;

    .line 37
    new-instance v0, Lcom/amap/mapapi/map/au;

    invoke-direct {v0}, Lcom/amap/mapapi/map/au;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/bd;->c:Lcom/amap/mapapi/map/ar;

    .line 38
    iget-object v0, p1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/bf;)V

    .line 53
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/mapapi/map/w;IZ)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;",
            "Lcom/amap/mapapi/map/w;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 265
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    iget-boolean v1, p2, Lcom/amap/mapapi/map/w;->f:Z

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p2, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p2, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->clear()V

    .line 276
    iget v1, p2, Lcom/amap/mapapi/map/w;->b:I

    if-gt p3, v1, :cond_0

    iget v1, p2, Lcom/amap/mapapi/map/w;->c:I

    if-lt p3, v1, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 281
    if-lez v3, :cond_0

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_5

    .line 292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 293
    if-nez v0, :cond_3

    .line 291
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 296
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    iget v5, v0, Lcom/amap/mapapi/map/at$a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v5, v0, Lcom/amap/mapapi/map/at$a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget v5, v0, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    iget-object v5, p2, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amap/mapapi/map/h;->a(Ljava/lang/String;)I

    move-result v4

    .line 305
    new-instance v5, Lcom/amap/mapapi/map/at$a;

    iget v6, v0, Lcom/amap/mapapi/map/at$a;->b:I

    iget v7, v0, Lcom/amap/mapapi/map/at$a;->c:I

    iget v8, v0, Lcom/amap/mapapi/map/at$a;->d:I

    iget v9, p2, Lcom/amap/mapapi/map/w;->k:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 308
    iput v4, v5, Lcom/amap/mapapi/map/at$a;->g:I

    .line 309
    iget-object v0, v0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    iput-object v0, v5, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 310
    iget-object v0, p2, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v5}, Lcom/amap/mapapi/core/t;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-direct {p0, v5}, Lcom/amap/mapapi/map/bd;->a(Lcom/amap/mapapi/map/at$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 314
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->g:Lcom/amap/mapapi/map/u;

    invoke-virtual {v0, v5}, Lcom/amap/mapapi/map/u;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-boolean v0, p2, Lcom/amap/mapapi/map/w;->g:Z

    if-nez v0, :cond_4

    .line 316
    const/4 v0, -0x1

    iput v0, v5, Lcom/amap/mapapi/map/at$a;->a:I

    .line 318
    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 322
    goto/16 :goto_0
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->c:Lcom/amap/mapapi/map/ar;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->c:Lcom/amap/mapapi/map/ar;

    invoke-virtual {v0, p1, p2}, Lcom/amap/mapapi/map/ar;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private a(Lcom/amap/mapapi/map/at$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 462
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/amap/mapapi/map/at$a;->g:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->g:Lcom/amap/mapapi/map/u;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 175
    if-eqz v2, :cond_0

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 179
    iget-object v3, p0, Lcom/amap/mapapi/map/bd;->g:Lcom/amap/mapapi/map/u;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/u;->a(Lcom/amap/mapapi/map/at$a;)V

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 495
    if-nez p1, :cond_1

    move-object v3, v5

    .line 582
    :cond_0
    :goto_0
    return-object v3

    .line 498
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 499
    if-nez v4, :cond_2

    move-object v3, v5

    .line 500
    goto :goto_0

    :cond_2
    move v2, v7

    move-object v3, v5

    .line 509
    :goto_1
    if-ge v2, v4, :cond_0

    .line 510
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 511
    if-nez v0, :cond_3

    move v0, v2

    move-object v1, v3

    move v2, v4

    .line 509
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    move v4, v2

    move v2, v0

    goto :goto_1

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    if-nez v1, :cond_5

    :cond_4
    move-object v3, v5

    .line 516
    goto :goto_0

    .line 518
    :cond_5
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->size()I

    move-result v1

    .line 519
    iget v6, v0, Lcom/amap/mapapi/map/at$a;->e:I

    if-lt v6, v1, :cond_6

    move v0, v2

    move-object v1, v3

    move v2, v4

    .line 520
    goto :goto_2

    .line 522
    :cond_6
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    iget v6, v0, Lcom/amap/mapapi/map/at$a;->e:I

    invoke-virtual {v1, v6}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/map/w;

    iget-boolean v1, v1, Lcom/amap/mapapi/map/w;->g:Z

    if-nez v1, :cond_7

    move v0, v2

    move-object v1, v3

    move v2, v4

    .line 524
    goto :goto_2

    .line 532
    :cond_7
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    iget v6, v0, Lcom/amap/mapapi/map/at$a;->e:I

    invoke-virtual {v1, v6}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/map/w;

    iget-object v1, v1, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/j;->a(Lcom/amap/mapapi/map/at$a;)I

    move-result v8

    .line 535
    if-ltz v8, :cond_c

    .line 539
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 540
    add-int/lit8 v4, v4, -0x1

    .line 541
    add-int/lit8 v2, v2, -0x1

    .line 548
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    iget v6, v0, Lcom/amap/mapapi/map/at$a;->e:I

    invoke-virtual {v1, v6}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/map/w;

    iget-object v9, v1, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    .line 550
    if-nez v9, :cond_8

    move v0, v2

    move-object v1, v3

    move v2, v4

    .line 551
    goto :goto_2

    .line 556
    :cond_8
    invoke-virtual {v9}, Lcom/amap/mapapi/core/t;->size()I

    move-result v10

    move v6, v7

    .line 559
    :goto_3
    if-ge v6, v10, :cond_b

    .line 560
    invoke-virtual {v9, v6}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/map/at$a;

    .line 561
    if-nez v1, :cond_a

    .line 559
    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    .line 564
    :cond_a
    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/at$a;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 565
    iput v8, v1, Lcom/amap/mapapi/map/at$a;->g:I

    .line 568
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->d()V

    :cond_b
    move v0, v2

    move-object v1, v3

    move v2, v4

    .line 572
    goto/16 :goto_2

    .line 573
    :cond_c
    if-nez v3, :cond_d

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    :goto_4
    new-instance v3, Lcom/amap/mapapi/map/at$a;

    invoke-direct {v3, v0}, Lcom/amap/mapapi/map/at$a;-><init>(Lcom/amap/mapapi/map/at$a;)V

    .line 577
    const/4 v0, -0x1

    iput v0, v3, Lcom/amap/mapapi/map/at$a;->a:I

    .line 578
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v2, v4

    goto/16 :goto_2

    :cond_d
    move-object v1, v3

    goto :goto_4
.end method

.method protected a(Ljava/util/ArrayList;Ljava/net/Proxy;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;",
            "Ljava/net/Proxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v2

    .line 67
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    iget v0, v0, Lcom/amap/mapapi/map/at$a;->e:I

    if-ge v0, v2, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/bd;->a(Ljava/util/List;)V

    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    iget v0, v0, Lcom/amap/mapapi/map/at$a;->e:I

    .line 79
    iget-object v2, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 81
    iget-object v0, v0, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    if-eqz v0, :cond_4

    .line 82
    new-instance v2, Lcom/amap/mapapi/map/ax;

    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, p2, v0, v3}, Lcom/amap/mapapi/map/ax;-><init>(Ljava/util/ArrayList;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v3, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    iget v0, v0, Lcom/amap/mapapi/map/at$a;->e:I

    invoke-virtual {v3, v0}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/ax;->a(Lcom/amap/mapapi/map/w;)V

    .line 95
    invoke-virtual {v2}, Lcom/amap/mapapi/map/ax;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v2, v1}, Lcom/amap/mapapi/map/ax;->a(Lcom/amap/mapapi/map/w;)V

    .line 108
    :goto_1
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/bd;->b(Ljava/util/ArrayList;)V

    .line 109
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v0

    .line 110
    goto/16 :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$a;->d()V

    move-object v1, v0

    .line 132
    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/amap/mapapi/map/c;->a()V

    .line 31
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->g:Lcom/amap/mapapi/map/u;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/u;->clear()V

    .line 33
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 149
    if-eqz v2, :cond_0

    .line 152
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 153
    iget-object v3, p0, Lcom/amap/mapapi/map/bd;->g:Lcom/amap/mapapi/map/u;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/u;->b(Lcom/amap/mapapi/map/at$a;)Z

    move-result v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v0, v1, -0x1

    .line 157
    add-int/lit8 v1, v2, -0x1

    .line 152
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const-wide v6, 0x412e848000000000L

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->f()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v1

    int-to-double v3, v1

    div-double/2addr v3, v6

    .line 331
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v6

    .line 332
    const/16 v6, 0x14

    invoke-static {v3, v4, v0, v1, v6}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->LatLongToPixels(DDI)Lcom/amap/mapapi/map/bc;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget v3, v0, Lcom/amap/mapapi/map/bc;->a:I

    iput v3, v1, Lcom/amap/mapapi/map/MapView;->centerX:I

    .line 334
    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    iput v0, v1, Lcom/amap/mapapi/map/MapView;->centerY:I

    .line 335
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    iput v1, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    .line 337
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    iput v1, v0, Lcom/amap/mapapi/map/ad;->g:I

    .line 340
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v1, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v1, v1, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v3, v3, Lcom/amap/mapapi/map/ad;->g:I

    iget-object v4, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v4

    iget-object v6, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v6, v6, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v6}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v6

    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;III)Ljava/util/ArrayList;

    move-result-object v6

    .line 345
    if-nez v6, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    if-lez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    if-eqz v0, :cond_6

    .line 355
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v0

    move v1, v0

    :goto_1
    move v4, v2

    move v3, v5

    .line 359
    :goto_2
    if-ge v4, v1, :cond_3

    .line 361
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 362
    iget-object v7, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    const-string v8, "GridTmc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Lcom/amap/mapapi/map/w;->f:Z

    if-eqz v7, :cond_2

    .line 363
    iget-object v7, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v7, v7, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v7}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v7

    invoke-direct {p0, v6, v0, v7, p2}, Lcom/amap/mapapi/map/bd;->a(Ljava/util/ArrayList;Lcom/amap/mapapi/map/w;IZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 366
    if-eqz v7, :cond_4

    .line 367
    invoke-direct {p0, v7, v3}, Lcom/amap/mapapi/map/bd;->a(Ljava/util/ArrayList;Z)V

    .line 368
    if-ne v3, v5, :cond_5

    move v0, v2

    .line 371
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_4
    move v3, v0

    .line 359
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 382
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 389
    iget-object v0, p0, Lcom/amap/mapapi/map/bd;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->invalidate()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public a_()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x4

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0, v0}, Lcom/amap/mapapi/map/bd;->a(ZZ)V

    .line 231
    return-void
.end method
