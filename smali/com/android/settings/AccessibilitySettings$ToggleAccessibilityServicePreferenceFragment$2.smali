.class Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
