.class Lcom/android/settings/DreamSettings$6;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->initFooterBar(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/settings/DreamSettings$6;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 486
    new-instance v0, Lcom/android/settings/DreamSettings$6$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamSettings$6$1;-><init>(Lcom/android/settings/DreamSettings$6;)V

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings$6$1;->run()V

    .line 492
    return-void
.end method
