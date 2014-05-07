.class Lcom/android/settings/framework/search/SuggestionProvider$Target;
.super Ljava/lang/Object;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/search/SuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Target"
.end annotation


# static fields
.field private static count:I


# instance fields
.field enabled:Z

.field id:Ljava/lang/String;

.field index:I

.field intent:Landroid/content/Intent;

.field searchKeyword:Ljava/lang/String;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->title:Ljava/lang/String;

    .line 60
    sget v0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;->count:I

    iput v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->index:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->enabled:Z

    .line 62
    return-void
.end method


# virtual methods
.method getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method setEnabled(Z)Lcom/android/settings/framework/search/SuggestionProvider$Target;
    .locals 0
    .parameter "b"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->enabled:Z

    .line 82
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;
    .locals 0
    .parameter "i"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->intent:Landroid/content/Intent;

    .line 72
    return-object p0
.end method

.method setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;
    .locals 0
    .parameter "keyword"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/framework/search/SuggestionProvider$Target;->searchKeyword:Ljava/lang/String;

    .line 66
    return-object p0
.end method
