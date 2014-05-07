.class public Lcom/amap/mapapi/core/PoiItem;
.super Lcom/amap/mapapi/core/OverlayItem;
.source "PoiItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/mapapi/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DesSplit:Ljava/lang/String; = " - "


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/amap/mapapi/core/l;

    invoke-direct {v0}, Lcom/amap/mapapi/core/l;-><init>()V

    sput-object v0, Lcom/amap/mapapi/core/PoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amap/mapapi/core/OverlayItem;-><init>(Landroid/os/Parcel;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->d:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/mapapi/core/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/amap/mapapi/core/PoiItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/mapapi/core/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p2, p3, p4}, Lcom/amap/mapapi/core/OverlayItem;-><init>(Lcom/amap/mapapi/core/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 114
    check-cast p1, Lcom/amap/mapapi/core/PoiItem;

    .line 116
    iget-object v1, p0, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/amap/mapapi/core/PoiItem;->g:I

    return v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/amap/mapapi/core/PoiItem;->g:I

    .line 60
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->h:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->c:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->b:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setTypeDes(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setXmlNode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amap/mapapi/core/PoiItem;->f:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/amap/mapapi/core/OverlayItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/amap/mapapi/core/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
