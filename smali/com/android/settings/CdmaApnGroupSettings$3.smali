.class Lcom/android/settings/CdmaApnGroupSettings$3;
.super Ljava/lang/Object;
.source "CdmaApnGroupSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CdmaApnGroupSettings;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnGroupSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CdmaApnGroupSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings$3;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings$3;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnGroupSettings;->finish()V

    .line 1106
    return-void
.end method
