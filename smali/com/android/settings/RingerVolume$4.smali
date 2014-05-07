.class Lcom/android/settings/RingerVolume$4;
.super Ljava/lang/Object;
.source "RingerVolume.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RingerVolume;->initSeekBarControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolume;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolume;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/settings/RingerVolume$4;->this$0:Lcom/android/settings/RingerVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 554
    .local v0, objTag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 555
    check-cast v1, Landroid/view/View;

    .line 556
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 559
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
