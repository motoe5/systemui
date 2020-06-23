.class public Lcom/android/systemui/moto/CarrierNetworkType;
.super Ljava/lang/Object;
.source "CarrierNetworkType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final sDataTypeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "CarrierNetworkType"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/moto/CarrierNetworkType;->DEBUG:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    .line 25
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCarrierNetworkMap(Landroid/content/Context;Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/android/systemui/moto/NetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/moto/NetworkConfig;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "dataTypeGroup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;>;"
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->loadDataHashMap()V

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f150000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 59
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {p0, v2, p1, p2}, Lcom/android/systemui/moto/CarrierNetworkType;->parseNetwork(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 67
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v3, "CarrierNetworkType"

    const-string/jumbo v4, "network XML parse IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v3, "CarrierNetworkType"

    const-string/jumbo v4, "network XML parse error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 65
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 64
    throw v3
.end method

.method private static loadDataHashMap()V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "1X_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_1X:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "2G_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_2G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "3G_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_3G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "3G+_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_3G_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "4G_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "4G_A_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_ATT:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "4G_LTE_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_LTE:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "4G_LTE_A_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_LTE_ATT:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "4G+_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "E_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_E:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "E_A_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_E:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "G_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "G_A_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "H_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_H:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "H+_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_H_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "LTE_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_LTE:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "LTE+_W"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_LTE_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType;->sDataTypeHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "OFF"

    sget-object v2, Lcom/android/systemui/moto/CarrierIcons;->WIDE_OFF:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method private static parseNetwork(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "config"    # Lcom/android/systemui/moto/NetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/systemui/moto/NetworkConfig;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "dataLookup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;>;"
    iget-object v5, p2, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-static {p2, p3}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->getGenericLookup(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V

    .line 73
    return-void

    .line 76
    :cond_0
    const/4 v2, 0x0

    .line 77
    .local v2, "matched":Z
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 78
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 79
    .local v1, "event":I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 80
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/R$styleable;->MobileNetwork:[I

    .line 82
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 84
    .local v4, "typeAttr":Landroid/content/res/TypedArray;
    new-instance v0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    invoke-direct {v0, v4}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;-><init>(Landroid/content/res/TypedArray;)V

    .line 85
    .local v0, "cn":Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    iget-object v5, p2, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->-get0(Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    sget-boolean v5, Lcom/android/systemui/moto/CarrierNetworkType;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 89
    const-string/jumbo v5, "CarrierNetworkType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Carrier Network Map: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->getDataLookupArray(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V

    .line 99
    .end local v0    # "cn":Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;
    .end local v1    # "event":I
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "typeAttr":Landroid/content/res/TypedArray;
    :cond_3
    if-nez v2, :cond_4

    .line 100
    invoke-static {p2, p3}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->getGenericLookup(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V

    .line 102
    :cond_4
    return-void
.end method
