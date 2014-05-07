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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->a:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->g:I

    .line 114
    iput p1, p0, Lcom/amap/mapapi/map/at$a;->b:I

    .line 115
    iput p2, p0, Lcom/amap/mapapi/map/at$a;->c:I

    .line 116
    iput p3, p0, Lcom/amap/mapapi/map/at$a;->d:I

    .line 117
    iput p4, p0, Lcom/amap/mapapi/map/at$a;->e:I

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/map/at$a;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->a:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->g:I

    .line 121
    iget v0, p1, Lcom/amap/mapapi/map/at$a;->b:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->b:I

    .line 122
    iget v0, p1, Lcom/amap/mapapi/map/at$a;->c:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->c:I

    .line 123
    iget v0, p1, Lcom/amap/mapapi/map/at$a;->d:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->d:I

    .line 124
    iget v0, p1, Lcom/amap/mapapi/map/at$a;->e:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->e:I

    .line 125
    iget-object v0, p1, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 126
    iget v0, p1, Lcom/amap/mapapi/map/at$a;->a:I

    iput v0, p0, Lcom/amap/mapapi/map/at$a;->a:I

    .line 127
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/mapapi/map/at$a;
    .locals 1

    .prologue
    .line 130
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

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/amap/mapapi/map/at$a;->a()Lcom/amap/mapapi/map/at$a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    if-ne p0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    instance-of v2, p1, Lcom/amap/mapapi/map/at$a;

    if-nez v2, :cond_2

    move v0, v1

    .line 140
    goto :goto_0

    .line 143
    :cond_2
    check-cast p1, Lcom/amap/mapapi/map/at$a;

    .line 144
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

    .prologue
    .line 153
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

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget v1, p0, Lcom/amap/mapapi/map/at$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lcom/amap/mapapi/map/at$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v1, p0, Lcom/amap/mapapi/map/at$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p0, Lcom/amap/mapapi/map/at$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
