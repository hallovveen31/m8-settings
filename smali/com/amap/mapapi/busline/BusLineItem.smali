.class public Lcom/amap/mapapi/busline/BusLineItem;
.super Ljava/lang/Object;
.source "BusLineItem.java"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusStationItem;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/amap/mapapi/core/GeoPoint;

.field private C:Lcom/amap/mapapi/core/GeoPoint;

.field private a:F

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:F

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:F

.field private p:F

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->B:Lcom/amap/mapapi/core/GeoPoint;

    iput-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->C:Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

.method private a()V
    .locals 7

    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v3, v2

    move v4, v1

    move v5, v2

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    if-ge v6, v5, :cond_2

    move v5, v6

    :cond_2
    if-ge v0, v3, :cond_3

    move v3, v0

    :cond_3
    if-le v6, v4, :cond_4

    move v4, v6

    :cond_4
    if-le v0, v2, :cond_5

    move v2, v0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v3, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->B:Lcom/amap/mapapi/core/GeoPoint;

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v2, v4}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->C:Lcom/amap/mapapi/core/GeoPoint;

    goto :goto_0
.end method


# virtual methods
.method public getLowerLeftPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->B:Lcom/amap/mapapi/core/GeoPoint;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/mapapi/busline/BusLineItem;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->B:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getUpperRightPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->C:Lcom/amap/mapapi/core/GeoPoint;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/mapapi/busline/BusLineItem;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->C:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getmAir()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->w:Z

    return v0
.end method

.method public getmAuto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->r:Z

    return v0
.end method

.method public getmBasicPrice()F
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->o:F

    return v0
.end method

.method public getmCommunicationTicket()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->q:Z

    return v0
.end method

.method public getmCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getmDataSource()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->v:I

    return v0
.end method

.method public getmDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getmEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getmFrontName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getmFrontSpell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getmKeyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getmLength()F
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->a:F

    return v0
.end method

.method public getmLineId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getmSpeed()F
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->f:F

    return v0
.end method

.method public getmStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getmStations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->e:I

    return v0
.end method

.method public getmTerminalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getmTerminalSpell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getmTotalPrice()F
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->p:F

    return v0
.end method

.method public getmType()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->c:I

    return v0
.end method

.method public getmXys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ismDoubleDeck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->u:Z

    return v0
.end method

.method public ismExpressWay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->z:Z

    return v0
.end method

.method public ismIcCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->s:Z

    return v0
.end method

.method public ismLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/busline/BusLineItem;->t:Z

    return v0
.end method

.method public setmAir(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->w:Z

    return-void
.end method

.method public setmAuto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->r:Z

    return-void
.end method

.method public setmBasicPrice(F)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->o:F

    return-void
.end method

.method public setmCommunicationTicket(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->q:Z

    return-void
.end method

.method public setmCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->n:Ljava/lang/String;

    return-void
.end method

.method public setmDataSource(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->v:I

    return-void
.end method

.method public setmDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->d:Ljava/lang/String;

    return-void
.end method

.method public setmDoubleDeck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->u:Z

    return-void
.end method

.method public setmEndTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->m:Ljava/lang/String;

    return-void
.end method

.method public setmExpressWay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->z:Z

    return-void
.end method

.method public setmFrontName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->j:Ljava/lang/String;

    return-void
.end method

.method public setmFrontSpell(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->x:Ljava/lang/String;

    return-void
.end method

.method public setmIcCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->s:Z

    return-void
.end method

.method public setmKeyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->i:Ljava/lang/String;

    return-void
.end method

.method public setmLength(F)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->a:F

    return-void
.end method

.method public setmLineId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->h:Ljava/lang/String;

    return-void
.end method

.method public setmLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->t:Z

    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->b:Ljava/lang/String;

    return-void
.end method

.method public setmSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->f:F

    return-void
.end method

.method public setmStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->l:Ljava/lang/String;

    return-void
.end method

.method public setmStations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusStationItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->A:Ljava/util/ArrayList;

    return-void
.end method

.method public setmStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->e:I

    return-void
.end method

.method public setmTerminalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->k:Ljava/lang/String;

    return-void
.end method

.method public setmTerminalSpell(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->y:Ljava/lang/String;

    return-void
.end method

.method public setmTotalPrice(F)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->p:F

    return-void
.end method

.method public setmType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->c:I

    return-void
.end method

.method public setmXys(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusLineItem;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusLineItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusLineItem;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusLineItem;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
