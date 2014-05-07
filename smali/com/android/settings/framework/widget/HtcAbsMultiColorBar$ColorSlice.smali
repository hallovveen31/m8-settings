.class public Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;
.super Ljava/lang/Object;
.source "HtcAbsMultiColorBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/widget/HtcAbsMultiColorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorSlice"
.end annotation


# instance fields
.field private mColor:I

.field private mPercentage:I

.field private mValue:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mColor:I

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;-><init>(I)V

    iput p2, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mValue:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mValue:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mPercentage:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mColor:I

    return v0
.end method


# virtual methods
.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/widget/HtcAbsMultiColorBar$ColorSlice;->mValue:F

    return-void
.end method
