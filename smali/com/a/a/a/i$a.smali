.class Lcom/a/a/a/i$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ParserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/a/a/a/g;

.field final synthetic b:Lcom/a/a/a/i;

.field private c:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/a/a/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/a/a/a/i$a;->b:Lcom/a/a/a/i;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 83
    new-instance v0, Lcom/a/a/a/g;

    invoke-direct {v0}, Lcom/a/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 91
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 96
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/g;->d(Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 98
    :cond_1
    const-string v0, "rdesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/g;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "cenx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/g;->a(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    invoke-virtual {v0, v3, v4}, Lcom/a/a/a/g;->a(D)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v0, "ceny"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/g;->b(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    invoke-virtual {v0, v3, v4}, Lcom/a/a/a/g;->b(D)V

    goto :goto_0

    .line 112
    :cond_4
    const-string v0, "radius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    :try_start_2
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/g;->c(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 115
    :catch_2
    move-exception v0

    .line 116
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    invoke-virtual {v0, v3, v4}, Lcom/a/a/a/g;->c(D)V

    goto :goto_0

    .line 118
    :cond_5
    const-string v0, "citycode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_6
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    const-string v0, "adcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/a/a/a/i$a;->a:Lcom/a/a/a/g;

    iget-object v1, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/g;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a/i$a;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 134
    return-void
.end method
