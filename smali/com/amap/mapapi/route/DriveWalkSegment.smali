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

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionCode:I

    return v0
.end method

.method public getActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionDes:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionCode:I

    .line 31
    return-void
.end method

.method public setActionDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mActionDes:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/mapapi/route/DriveWalkSegment;->mRoadName:Ljava/lang/String;

    .line 39
    return-void
.end method
