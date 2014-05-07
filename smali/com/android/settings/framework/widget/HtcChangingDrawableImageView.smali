.class public Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;
.super Landroid/widget/ImageView;
.source "HtcChangingDrawableImageView.java"


# static fields
.field public static final CONTENT_DRAWABLE:Ljava/lang/String; = "ContentDrawable"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getContentDrawable()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public setContentDrawable(I)V
    .locals 0
    .parameter "drawableResId"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/widget/HtcChangingDrawableImageView;->setImageResource(I)V

    .line 25
    return-void
.end method
