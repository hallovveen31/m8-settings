.class Lcom/android/settings/location/LocationSettings$4;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$4;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$4;->this$0:Lcom/android/settings/location/LocationSettings;

    #calls: Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V
    invoke-static {v0}, Lcom/android/settings/location/LocationSettings;->access$200(Lcom/android/settings/location/LocationSettings;)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$4;->this$0:Lcom/android/settings/location/LocationSettings;

    #calls: Lcom/android/settings/location/LocationSettings;->refreshLocationSwitchAndCategories()V
    invoke-static {v0}, Lcom/android/settings/location/LocationSettings;->access$300(Lcom/android/settings/location/LocationSettings;)V

    .line 594
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 595
    return-void
.end method
