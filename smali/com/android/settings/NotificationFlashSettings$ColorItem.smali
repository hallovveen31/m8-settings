.class Lcom/android/settings/NotificationFlashSettings$ColorItem;
.super Ljava/lang/Object;
.source "NotificationFlashSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationFlashSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorItem"
.end annotation


# instance fields
.field public colorName:Ljava/lang/String;

.field public colorValue:I

.field final synthetic this$0:Lcom/android/settings/NotificationFlashSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationFlashSettings;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationFlashSettings$ColorItem;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    return-void
.end method
