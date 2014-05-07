.class Lcom/android/settings/CdmaApnSettings$3;
.super Ljava/lang/Object;
.source "CdmaApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CdmaApnSettings;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CdmaApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CdmaApnSettings$3;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CdmaApnSettings$3;->this$0:Lcom/android/settings/CdmaApnSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
