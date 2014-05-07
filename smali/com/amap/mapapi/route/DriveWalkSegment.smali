.class public Lcom/amap/mapapi/route/DriveWalkSegment;
.super Lcom/amap/mapapi/route/Segment;
.source "DriveWalkSegment.java"


# static fields
.field public static final NoAction:I = -0x1


# instance fields
.field protected mActionCode:I

.field protected mActionDes:Ljava/lang/String;

.field protected mRoadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionCode:I

    return v0
.end method

.method public getActionDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionDes:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionCode:I

    return-void
.end method

.method public setActionDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionDes:Ljava/lang/String;

    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mRoadName:Ljava/lang/String;

    return-void
.end method
