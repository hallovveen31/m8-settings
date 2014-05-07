.class Lcom/amap/mapapi/map/at$a;
.super Ljava/lang/Object;
.source "Tile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Landroid/graphics/PointF;

.field public g:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->g:I

    iput p1, p0, Lcom/amap/mapapi/map/at$a;->b:I

    iput p2, p0, Lcom/amap/mapapi/map/at$a;->c:I

    iput p3, p0, Lcom/amap/mapapi/map/at$a;->d:I

    iput p4, p0, Lcom/amap/mapapi/map/at$a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/map/at$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->g:I

    iget v0, p1, Lcom/amap/mapapi/map/at$a;->b:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->b:I

    iget v0, p1, Lcom/amap/mapapi/map/at$a;->c:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->c:I

    iget v0, p1, Lcom/amap/mapapi/map/at$a;->d:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->d:I

    iget v0, p1, Lcom/amap/mapapi/map/at$a;->e:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->e:I

    iget-object v0, p1, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    iget v0, p1, Lcom/amap/mapapi/map/at$a;->a:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/mapapi/map/at$a;
    .locals 1

    new-instance v0, Lcom/amap/mapapi/map/at$a;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/at$a;-><init>(Lcom/amap/mapapi/map/at$a;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/mapapi/map/at$a;->a()Lcom/amap/mapapi/map/at$a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/amap/mapapi/map/at$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/amap/mapapi/map/at$a;

    iget v2, p0, Lcom/amap/mapapi/map/at$a;->b:I

    iget v3, p1, Lcom/amap/mapapi/map/at$a;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/mapapi/map/at$a;->c:I

    iget v3, p1, Lcom/amap/mapapi/map/at$a;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/mapapi/map/at$a;->d:I

    iget v3, p1, Lcom/amap/mapapi/map/at$a;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/mapapi/map/at$a;->e:I

    iget v3, p1, Lcom/amap/mapapi/map/at$a;->e:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/amap/mapapi/map/at$a;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/mapapi/map/at$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
