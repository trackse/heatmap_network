#headmap
if(TRUE){
  base::load("P:/npc3/颅底孔道影响的是治疗效果/headdata_matrix.RData" )
  anaObj=c("dead","x143x","x107x","x172x","x175x","x178x","x213x","x214x","survival")
  
  
  library("d3heatmap")
  # library("pheatmap")
  library("RColorBrewer")
  
  ##1.paper result
  set.seed(2023)
  d3heatmap(headdata_matrix, 
            # scale = "column", col = "Blues",
            colors = "RdYlBu",#best
            # colors = colorRamp(c("green","blue")),
            #colors = "YlOrRd",
            # col=col,
            density.info="histogram",
            key=TRUE,
            
            k_row = 2, # Number of groups in rows
            k_col = 2, # Number of groups in columns
            labCol =anaObj
            
  )
  
  base::load("P:/npc3/颅底孔道影响的是治疗效果/headdata_matrix_del_survival.RData" )
  anaObj_del_survival=c("x143x","x107x","x172x","x175x","x178x","x213x","x214x")
  
  set.seed(2023)
  d3heatmap(headdata_matrix_del_survival, 
            # scale = "column", col = "Blues",
            colors = "RdYlBu",#best
            # colors = colorRamp(c("green","blue")),
            #colors = "YlOrRd",
            # col=col,
            density.info="histogram",
            key=TRUE,
            
            k_row = 2, # Number of groups in rows
            k_col = 2, # Number of groups in columns
            labCol =anaObj_del_survival
            
  )
  
  
}


#network analyze
if(TRUE){
  library(network) #新版变得更简单，只需要变为as.matrix(数字)就OK
  library(sna)
  # library(ggplot2)
  library(GGally)
  
  base::load("P:/npc3/颅底孔道影响的是治疗效果/bip_net.RData" )
  set.seed(2023);ggnet2(bip_net,
                        # mode="fruchtermanreingold",
                        # mode="circrand",
                        mode="geodist",
                        
                        label = TRUE, size = "lbsize",color = "color", node.label =  "lb",
                        edge.label.fill = "white",edge.color = "grey85"
                        # , layout.par = list(cell.jitter = 0.25)
  )
  
  
}
